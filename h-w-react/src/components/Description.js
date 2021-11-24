// Description component
const Description = () => {
  return (
    <div className="description">
      This is a <span className="italic">Microservice Application</span> using React JS. <br /> <br />
    This tiny app fetches Helo World from the backend using Rest API and it uses Rabbitmq to log each request.
    </div>
  );
};


export default Description;