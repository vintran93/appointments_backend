import React from 'react';
import { Navigate, Link } from 'react-router-dom';
import { useSelector } from 'react-redux';
// import doctorActions from '../actions/doctorActions';
import { connect } from 'react-redux';

function AppointmentsList({ appointments }) {
    console.log(appointments)
    let appointmentList
    // initialize content, and loading state variable
    // const [content, setContent] = useState('');
    // const [loading, setLoading] = useState(true); // finish loading/buffering
    const { user: currentUser } = useSelector(state => state.auth);
    // const dispatch = useDispatch();

    // use effect for obtaining appointments list
    // useEffect(() => {
    //     if (currentUser) {
    //         doctorActions.fetchAppointments(currentUser.user.id)
    //             // .then(response => response.json())
    //             .then(response => {
    //                 setLoading(false);
    //                 setContent(response);
    //             },
    //                 error => {
    //                     setLoading(false);
    //                     const message = (error.response);
    //                     setContent(message);
    //                 },
    //             );
    //     }
    // }, [currentUser, dispatch]);

    if (!currentUser) {
        return <Navigate to="/login" />;
    }

    if (appointments.length === 0) {
        appointmentList = (
            <h4>
                You do not have any appointments yet. Schedule one
                <Link to="/appointments/new">
                    &nbsp; here.
                    {/* Non-breaking space */}
                </Link>
            </h4>
        );
    } else {
        appointmentList = appointments && appointments.map(appointment => {
            const d = new Date(appointment.appointment_date);
            const date = d.toUTCString();
            return (
                <Link to={`/appointments/${appointment.id}`} key={appointment.id}>
                    <div className="card m-4">
                        <div className="card-body">
                            <p>
                                On&nbsp;{date}
                            </p>
                        </div>
                    </div>
                </Link>
            );
        });
    }

    return (
        <div className="container text-center">
            {/* {loading && <span className="spinner-border spinner-border-lg" />} */}
            <div className="d-flex flex-wrap">
                {appointmentList}
            </div>
        </div>
    );
};

const mapStateToProps = state => {
    return { appointments: state.appointments, currentUser: state.auth }
}

export default connect(mapStateToProps)(AppointmentsList);

