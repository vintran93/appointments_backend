import React, { useState, useEffect } from 'react';
import { Navigate, Link } from 'react-router-dom';
import { useSelector, useDispatch } from 'react-redux';
import doctorActions from '../actions/doctorActions';
import { connect } from 'react-redux';

function AppointmentsList({ appointments }) {
    // initialize content, and loading state variable
    const [content, setContent] = useState('');
    const [loading, setLoading] = useState(true); // finish loading/buffering
    const { user: currentUser } = useSelector(state => state.auth);
    const dispatch = useDispatch();

    // use effect for obtaining appointments list
    useEffect(() => {
        if (currentUser) {
            doctorActions.getAppointments(currentUser.user.id)
                .then(response => {
                    setLoading(false);
                    setContent(response.data);
                },
                    error => {
                        setLoading(false);
                        const message = (error.response);
                        setContent(message);
                    },
                );
        }
    }, [currentUser, dispatch]);

    if (!currentUser) {
        return <Navigate to="/login" />;
    }

    if (!loading && content.length === 0) {
        appointments = (
            <h4>
                You do not have any appointments yet. Schedule one
                <Link to="/appointments/new">
                    &nbsp; here.
                    {/* Non-breaking space */}
                </Link>
            </h4>
        );
    } else {
        appointments = content && content.map(appointment => {
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
            {loading && <span className="spinner-border spinner-border-lg" />}
            <div className="d-flex flex-wrap">
                {appointments}
            </div>
        </div>
    );
};

const mapStateToProps = state => {
    return { appointments: state.appointments, currentUser: state.auth }
}

export default connect(mapStateToProps)(AppointmentsList);

