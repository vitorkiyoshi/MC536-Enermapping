import React, { useState } from "react";
import {Form, Button} from 'react-bootstrap';
import './login.css';
import { login } from "../api/api_login";
import {fazer_login} from "../api/util";

function Login()
{
    const [email,setEmail] = useState("");
    const [senha,setSenha] = useState("");

    async function logar(e)
    {
        await login(email,senha).then(res => {
            fazer_login(res.data.data['token'])
            alert(`Bem vindo, ${res.data.data['user'][0]}`)
        }
        )
        .catch(err => alert(err.response.data.message))
    }

  return (
    <div className="login-container">
        <div className="login-div">
            <Form>
                <div style={{'display': 'flex', 'justifyContent': 'center'}}>
                    <h3> Login </h3>
                </div>

                <Form.Group className="mb-3">
                    <Form.Control type="email" placeholder="email" value={email} onChange={e => setEmail(e.target.value)}/>
                </Form.Group>

                <Form.Group className="mb-3">
                    <Form.Control type="password" placeholder="senha" value={senha} onChange={e => setSenha(e.target.value)}/>
                </Form.Group>

                <div style={{'display': 'flex', 'justifyContent': 'center'}}>
                    <Button onClick={(e) => logar(e)}> Logar </Button>
                </div>
            </Form>
        </div>
    </div>
  );
};

export default Login;