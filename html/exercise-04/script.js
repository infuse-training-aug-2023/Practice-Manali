const user = {
    name: "Piyush Sharma",
    designation: "Senior Software Engineer",
    company: "Infuse Consulting",
    hobbies: ["Reading", "Listening to music", "Collecting stamps"]
}

/**
 * Use destructuting to log the following
*/

const printUserProfile = () => {
    // Piyush Sharma is a Senior Software Engineer at Infuse Consulting. He likes Reading, Listening to music and Collecting stamps
    const { name:Name, designation:jobTitle, company:company, hobbies:hobbies } = user;
    // console.log(user.name)
    const hobbiesString = hobbies.join(", ");
    console.log(`${Name} is a ${jobTitle} at ${company}. He likes ${hobbiesString}`);
   
}

printUserProfile()

