const mongoose = require('mongoose')

let Schema = mongoose.Schema
const UserSchema = new Schema(
    {
        rollno: {
            type: String,
            required: true,
        },
        password: {
            type: String,
            required: true,
        },
        role: {
            type: String,
            required: true,
        }
    },
    {
        timestamps: true
    }
)

const User = mongoose.model('User', UserSchema)

module.exports = User
