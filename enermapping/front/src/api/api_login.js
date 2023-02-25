import axios from "axios";

let url = "http://127.0.0.1:5000";
const API = axios.create({baseURL: url});

API.interceptors.request.use(async (options) => {
    options.headers["Content-Type"] = "application/json"
    options.headers["Access-Control-Allow-Origin"] = "*"
    return options
})

API.interceptors.response.use(
    res => { return res },
    error => {
        throw error
    }
)

export const login = async (email,senha) => {
    return API.post(`/login`, {"email": email, "senha": senha}).then(res => res)
}