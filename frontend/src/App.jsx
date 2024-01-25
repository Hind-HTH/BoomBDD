import { useEffect, useState } from "react";
import axios from "./axios";

export default function App() {
  const [studentList, setStudentList] = useState([]);

  useEffect(() => {
    const fetchStudent = async () => {
      try {
        const { data } = await axios.get('/student/get-all-student');
        setStudentList(data);
      } catch (error) {
        console.error('Error fetching student data:', error);
      }
    };

    fetchStudent();
  }, []);

  return (
    <div>
      <table className="table">
        <thead className="table-dark">
          <tr>
            <th scope="col">#</th>
            <th scope="col">NOM</th>
            <th scope="col">PRENOM</th>
            <th scope="col">EMAIL</th>
            <th scope="col">TEL</th>
            <th scope="col">ADRESSE</th>
            <th scope="col">VILLE</th>
            <th scope="col">CODE POSTALE</th>
          </tr>
        </thead>
        <tbody>
          {
            studentList?.map((s) => (
              <tr key={s.id}>
                <th scope="row">{s.id}</th>
                <td>{s.nom}</td>
                <td>{s.prenom}</td>
                <td>{s.email}</td>
                <td>{s.telephone}</td>
                <td>{s.adresse}</td>
                <td>{s.ville}</td>
                <td>{s.codePostale}</td>
              </tr>
            ))
          }
        </tbody>
      </table>
    </div>

  )
}
