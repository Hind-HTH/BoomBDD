const bcrypt = require('bcrypt');

module.exports = (sequelize, DataTypes) => {
  const etudiants = sequelize.define('etudiants',{
    id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      allowNull: false,
      autoIncrement: true,
    },
    id_session:{
      type: DataTypes.INTEGER,
        allowNull: false,
        references:{
          model: 'session',
          key: 'id_session'
        }
    },
    nom: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    prenom: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    email: {
      type: DataTypes.STRING,
      allowNull: false,
      unique: true,
      validate:{
        isEmail: true,  
      }
    },
    mdp:{
      type: DataTypes.STRING,
      allowNull: false,
    },	
    telephone:{
      type: DataTypes.STRING,
      allowNull: false,
    },	
    adresse:{
      type:DataTypes.STRING,
      allowNull: true,
      default: null
    }, 
    ville:{
      type: DataTypes.STRING,
      allowNull: false,
    },	
    codePostale:{
      type: DataTypes.STRING,
      allowNull: false,
    }
  }, 
  {
   
    tableName: 'etudiants',
    freezeTableName: true,
  })

  return etudiants;
};
