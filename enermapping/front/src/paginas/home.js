import { useEffect,useState } from 'react';

import './home.css';
import 'leaflet/dist/leaflet.css';
import 'bootstrap/dist/css/bootstrap.min.css';
import {Card,ProgressBar,Form,FormLabel, Button} from 'react-bootstrap';
import { MapContainer, TileLayer,  Marker, Popup } from 'react-leaflet'
import markerIconPng from "leaflet/dist/images/marker-icon.png";
import {Icon} from 'leaflet';
import {teste2,getRios,getRegioes} from "../api/api.js";
import {fazer_logout} from "../api/util";

function Home() {
  const [dados,setDados] = useState([]);
  const [selectedOpt,setSelectedOpt] = useState(0);
  const [details,setDetails] = useState(false);

  const [rios, setRios] = useState(false);
  const [selectedRio, setSelectedRio] = useState(false);

  const [regioes, setRegioes] = useState(false);
  const [selectedRegiao, setSelectedRegiao] = useState(false);

  useEffect(() => {
    async function loadMarker()
    {
      await teste2(0,'').then(res=> {
        setDados(res.data.data);
      });
    }

    loadMarker();
  },[]);
  
  async function selectRio(e)
  {
    await teste2(selectedOpt,e.target.value).then(res => setDados(res.data.data))
  }
  async function selectRegiao(e)
  {
    await teste2(selectedOpt,e.target.value).then(res => setDados(res.data.data))
  }

  async function selectOpt(e)
  {
    if (e.target.selectedIndex === 1)
    {
      await getRios().then(res => setRios(res.data.data.map(el => el[0])));
      setRegioes(false);
      setDetails(false);
      setDados(false);
      setSelectedOpt(e.target.selectedIndex);
    }
    else if (e.target.selectedIndex === 3)
    {
      setRios(false);
      await getRegioes().then(res => setRegioes(res.data.data.map(el => el[0])));
      setDetails(false);
      setDados(false);
      setSelectedOpt(e.target.selectedIndex);
    }
    else
    {
      await teste2(e.target.selectedIndex,'').then(res => {
          setRios(false);
          setRegioes(false);
          setDetails(false);
          setDados(res.data.data);
          setSelectedOpt(e.target.selectedIndex);
      });
    }
    
  }

  return (
    <div className="App">
      <Form.Group className="mb-3">
        <Form.Label>selecione</Form.Label>
        <Form.Select onChange={(e) => selectOpt(e)}>
          {
            ['top 5 regiões em consumo','Consumo de Regiões com Rio:', 'Usinas Construídas','Rios que Circundam a Região:', 'Impactos Ambientais das Usinas'].map((el,idx) => 
              <option key={idx}>
                {el}
              </option>
            )
          }

        </Form.Select>
      </Form.Group>

      { regioes &&
        <Form.Group className="mb-3">
          <Form.Select onChange={(e) => selectRegiao(e)}>
            {
              regioes.map((el,idx) => 
                <option key={idx}>
                  {el}
                </option>
              )
            }
          </Form.Select>
        </Form.Group>
      }

      { rios &&
        <Form.Group className="mb-3">
          <Form.Select onChange={(e) => selectRio(e)}>
            {
              rios.map((el,idx) => 
                <option key={idx}>
                  {el}
                </option>
              )
            }
          </Form.Select>
        </Form.Group>
      }

      <div className='painel-principal'>
        <MapContainer className='mapCont' center={[-19.569383, -45.263689]} zoom={5
        } scrollWheelZoom={true} >
        <TileLayer
          attribution='&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
          url="https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png"
        />
        { selectedOpt === 0 &&
          dados.map((el,index) => {
            return (
              <Marker icon={new Icon({iconUrl: markerIconPng, iconSize: [25, 41], iconAnchor: [12, 41]})} key = {index} position = {[el[1],el[2]]} >
                <Popup>
                  Rio: {el[0]} <br/>
                  Consumo: {el[3]} MWh
                </Popup>
            </Marker>
            )
          })
          
        }

        { selectedOpt === 1 && dados &&
          dados.map((el,index) => {
            return (
              <Marker icon={new Icon({iconUrl: markerIconPng, iconSize: [25, 41], iconAnchor: [12, 41]})} key = {index} position = {[el[1],el[2]]} >
                <Popup>
                  Regiao: {el[0]} <br/>
                  Consumo: {el[3]} MWh
                </Popup>
            </Marker>
            )
          })  
        }

        { selectedOpt === 2 &&
          dados.map((el,index) => {
            return (
              <Marker icon={new Icon({iconUrl: markerIconPng, iconSize: [25, 41], iconAnchor: [12, 41]})} key = {index} position = {[el[0],el[1]]} >
                <Popup>
                  Regiao: {el[2]} <br/>
                  CNPJ Empresa: {el[3]} <br/>
                  Custo Manutenção: {el[4]} <br/> 
                  Custo Construção: {el[5]} <br/>
                  Área Ocupada: {el[6]} m² <br/>
                  Tipo de Energia: {el[7]} <br/>
                  Capacidade: {el[8]} GWh 
                </Popup>
            </Marker>
            )
          })
        }
        { selectedOpt === 3 && dados &&
              <Marker icon={new Icon({iconUrl: markerIconPng, iconSize: [25, 41], iconAnchor: [12, 41]})} position = {dados[1][0]} >
                <Popup>
                  Regiao: {dados[0]} <br/>
                  Rios:<br/> {dados[2].map((el,index) =>{
                    return (<span key = {index}>{el}<br/></span>)}
                    )}
                </Popup>
              </Marker>
              
        }
        { selectedOpt === 4 &&
          dados.map((el,index) => {
            return (
              <Marker icon={new Icon({iconUrl: markerIconPng, iconSize: [25, 41], iconAnchor: [12, 41]})} key = {index} position = {[el[0],el[1]]}  eventHandlers={{
                click: (e) => {
                  setDetails(index);
                }
              }}>
                <Popup>
                  CNPJ: {el[2]} <br/>
                  Tipo Energia: {el[3]} <br/>
                </Popup>
            </Marker>
            )
          })
        }
        </MapContainer>
      { details !== false &&
        <div className='painel-lateral'>
          <FormLabel>Área Desmatada {dados[details][4]} km² <br/>
          Área Alagada {dados[details][5]} km²<br/>
          Emissão de Carbono {dados[details][6]} kg/Ano<br/>
          Lixo Nuclear {dados[details][7]} kg<br/> </FormLabel>
          <Card>
            <Card.Img variant="top"/>

            <Card.Body>
                <Card.Title> {dados[details][2]} </Card.Title>

                <Card.Text>
                    Área Desmatada: 
                </Card.Text>
                <ProgressBar striped variant="danger" now={dados[details][4]/50} />
                 
                <Card.Text>
                    Área Alagada: 
                </Card.Text>
                <ProgressBar striped variant="danger" now={dados[details][5]} />

                <Card.Text>
                    Emissão de Carbono: 
                </Card.Text>
                <ProgressBar striped variant="danger" now={dados[details][6]} />

                <Card.Text>
                    Lixo Nuclear: 
                </Card.Text>
                <ProgressBar striped variant="danger" now={dados[details][7]} />
            </Card.Body>
          </Card>
        </div>
      }
      </div>
      <Button onClick={(e) => fazer_logout()}>
        Logoff
      </Button>
    </div>
  );
}

export default Home;
