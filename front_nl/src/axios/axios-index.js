import axios from 'axios';
const request = axios.create({
    baseURL: 'http://127.0.0.1:10205',
    timeout: 9999
})

export default request