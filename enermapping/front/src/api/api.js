import axios from "axios";
import {getToken} from "./util";

let url = "http://127.0.0.1:5000";
const API = axios.create({baseURL: url});

API.interceptors.request.use(async (options) => {
    options.headers["Content-Type"] = "application/json"
    options.headers["Access-Control-Allow-Origin"] = "*"
    options.headers["Authorization"] = `Bearer ${getToken}`;
    return options
})

API.interceptors.response.use(
    res => { return res },
    error => {
        throw error
    }
)

export const teste2 = async (v,t) => {
    return API.post('/teste2', {"option": v,"string": t}).then(res => res)
}

export const getRios = async () => {
    return API.get(`/rios`).then(res => res)
}

export const getRegioes = async () => {
    return API.get(`/regioes`).then(res => res)
}