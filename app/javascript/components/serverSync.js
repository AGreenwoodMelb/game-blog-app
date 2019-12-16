import axios from 'axios'

const APIDomain = window.location.hostname === 'localhost' ? 'http://localhost:3000/api/' : 'http://prod-api-url.com/api/'

const headers = {
    "X-CSRF-Token": document.querySelector('meta[name="csrf-token"]').content
}

export const save = async (route, data) => {
  return axios
    .post(APIDomain + route, { data },{headers: headers})
    .then(res => res.data)
    .catch(err => {
        console.log(err)
    })
}

export const get = async (route) => {
  return axios
    .get(APIDomain + route)
    .then(res => res.data)
    .catch(err => {
        console.log(err)
    })
}
