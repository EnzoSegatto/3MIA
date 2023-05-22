import { Button } from 'react-bootstrap';
import NavBarProjeto from './componentes/NavBarProejto';
import Cards from './componentes/Cards';

function App (){
  return (
    <div>
      {/*<h2>Exemplo</h2>
      <Button variant="danger">Exemplo</Button>{' '} */}

      <NavBarProjeto/>
      <Cards/>

    </div>
  )
}
export default App