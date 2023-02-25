export const getToken = localStorage.getItem("TOKEN_ENERMAPPING");

export function fazer_login(token)
{
    localStorage.setItem("TOKEN_ENERMAPPING", token);
    window.location.href = "/";
};

export function fazer_logout()
{
    localStorage.removeItem("TOKEN_ENERMAPPING");
    window.location.href = "/login";
};