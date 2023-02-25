import React from 'react';
import ReactDOM from 'react-dom/client';
import './index.css';

import { BrowserRouter, Route, Switch, Redirect} from "react-router-dom";

import Home from './paginas/home';
import Login from './paginas/login';
import { getToken } from './api/util';

function Rotas()
{
  return (
    <BrowserRouter>
      <Switch>
        <Route exact path='/' render={() => Boolean(getToken) ? <Home/> : <Redirect to="/login"/>}></Route>
        <Route exact path='/login' render={() => Boolean(getToken) ? <Redirect to="/"/> : <Login/>}></Route>
      </Switch>
    </BrowserRouter>
  );
};


const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(
  <React.StrictMode>
    <Rotas />
  </React.StrictMode>
);