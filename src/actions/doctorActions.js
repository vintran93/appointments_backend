// import authHeader from '../services/auth-header';
// import axios from 'axios';
import { setMessage } from '../actions/message';
import { authJWT, authHeader } from '../services/auth-header';

const API_URL = 'http://localhost:3000/';


// const getDoctor = id => axios.get(`${API_URL}/api/v1/doctors/${id}`, { headers: authHeader() });

const fetchDoctor = (id) => fetch(`${API_URL}/api/v1/doctors/${id}`, { headers: authHeader() })
const getAppointments = id => fetch(`${API_URL}/api/v1/users/${id}/appointments`, { headers: authHeader() });
const getAppointment = (userId, appointmentId) => fetch(`${API_URL}/api/v1/users/${userId}/appointments/${appointmentId}`, { headers: authHeader() });

const postAppointment = (userId, doctorId, appointmentDate) =>
    fetch(`${API_URL}/api/v1/users/${userId}/appointments`, {
        method: 'POST', headers: { 'Authorization': authJWT(), 'Content-Type': 'application/json' },
        body: JSON.stringify({ 'doctor_id': doctorId, 'appointment_date': appointmentDate })
    });



const deleteAppointment = (userId, appointmentId) => fetch(`${API_URL}/api/v1/users/${userId}/appointments/${appointmentId}`, { method: 'DELETE', headers: authHeader() });

export const fetchDoctors = () => {
    return (dispatch) => {
        fetch(`${API_URL}/api/v1/doctors`, { headers: authHeader() })
            .then(resp => resp.json())
            .then(doctors => dispatch({ type: 'FETCH_DOCTORS', payload: doctors }))
            .catch(() => {
                dispatch(setMessage('Unable to get doctors list'));
            });
    }
}

export const fetchAppointments = id => {
    return (dispatch) => {
        fetch(`${API_URL}/api/v1/users/${id}/appointments`, { headers: authHeader() })
            .then(resp => resp.json())
            // .then(appointments => console.log('fetchAppointments', appointments))
            .then(appointments => dispatch({ type: 'FETCH_APPOINTMENTS', payload: appointments }))
    }
}

export const addDoctor = doctor => {
    console.log(doctor)
    return (dispatch) => {
        fetch(`${API_URL}/api/v1/doctors`, {
            method: 'POST',
            body: JSON.stringify(doctor),
            headers: { 'Authorization': authJWT(), 'Content-Type': 'application/json' }
        })
            .then(resp => resp.json())
            .then(doctor => dispatch({ type: 'ADD_DOCTOR', payload: doctor }))
    }
}

const doctorActions = {
    fetchDoctor,
    getAppointments,
    fetchAppointments,
    getAppointment,
    postAppointment,
    deleteAppointment
};

export default doctorActions;