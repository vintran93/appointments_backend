import React, { Component } from 'react'
import { connect } from 'react-redux'
import { addDoctor } from '../actions/doctorActions'

class DoctorForm extends Component {

    state = {
        name: '',
        education: '',
        specialty: '',
        experience: '',
        image: '',
        address: ''
    }

    handleChange = (e) => {
        const { name, value } = e.target

        this.setState({
            [name]: value
        })
    }

    handleSubmit = (e) => {
        e.preventDefault();
        console.log(this.state)
        this.props.addDoctor(this.state)
        console.log('done')
    }

    render() {
        return (
            <form onSubmit={this.handleSubmit} style={{ marginLeft: '45px' }}>
                <label>Name:</label>
                <input type='text' value={this.state.name} onChange={this.handleChange} name='name' />
                <br />
                <label>Education:</label>
                <input type='text' value={this.state.education} onChange={this.handleChange} name='education' />
                <br />
                <label>Specialty:</label>
                <input type='text' value={this.state.specialty} onChange={this.handleChange} name='specialty' />
                <br />
                <label>Experience:</label>
                <input type='text' value={this.state.experience} onChange={this.handleChange} name='experience' />
                <br />
                <label>Image:</label>
                <input type='text' value={this.state.image} onChange={this.handleChange} name='image' />
                <br />
                <label>Address:</label>
                <input type='text' value={this.state.address} onChange={this.handleChange} name='address' />
                <input type='submit' value='Create Doctor' />
            </form>
        )
    }
}

// export default connect(null, { addDoctor })(DoctorForm);

const mapDispatchToProps = dispatch => {
    return {
        addDoctor: (doctor) => dispatch(addDoctor(doctor))
    }
}

export default connect(null, mapDispatchToProps)(DoctorForm);