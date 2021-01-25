
import UIKit

class loginPage: UIViewController
{
    let dumbell = UIImage(named: "dumbell.png");
    let mountain_image = UIImage(named: "pic2.jpg")
    let myFitness = labelField(frame: .zero, text: "My Fitness", textColor: .white,textSize: 20)
    let tracker = labelField(frame: .zero, text: "Tracker", textColor: .white, textSize: 20)
    let welcomeback = labelField(frame: .zero, text: " Welcome back!", textColor: .white, textSize: 20)
    let new_to_activity_fitness = labelField(frame: .zero, text: "new to activity fitness?", textColor: .white, textSize: 20)
    let login = textField(frame: .zero, textsize: 20, textColor: .white, cornerradius: 5, placeholder: "login")
    let password = textField(frame: .zero, textsize: 20, textColor: .white, cornerradius: 5, placeholder: "password")
    let line1 = labelLine(frame: .zero, lineColor: .white,lineWidth : 3.0)
    let line2 = labelLine(frame: .zero, lineColor: .white,lineWidth : 3.0)
    let line3 = labelLine(frame: .zero, lineColor: .lightGray,lineWidth : 1.0)
    let sign_in = buttonField(frame: .zero, backgroundColor: .black, text: "Sign In", textSize: 20, textColor: .white, cornerradius: 15,borderColor: .black,borderWidth: 2)
    let create_account = transparent_button(frame: .zero, backgroundColor: .white, text: "Create Account", textSize: 20, textColor: .white, cornerradius: 15,borderColor: .white, borderWidth: 1)
    
    override func viewDidLoad() {
        self.view.translatesAutoresizingMaskIntoConstraints = false
        view.addBackground(imageName: "pic3.jpg")
       

        let rect = CGRect(x: 0, y: 0, width: 70, height: 70)
        let newdumbell =  self.resizeImage(image : UIImage(named: "dumbell.png")!, targetSize: rect)
        let myImageView:UIImageView = UIImageView()
        myImageView.contentMode = UIView.ContentMode.scaleAspectFit
        myImageView.frame.size.width = 1
        myImageView.frame.size.height = 1
        myImageView.center = self.view.center
        myImageView.image = newdumbell
        myImageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(myImageView)
        myImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40).isActive = true;
        myImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        

        view.addSubview(myFitness)
        myFitness.topAnchor.constraint(equalTo: myImageView.bottomAnchor, constant: 10).isActive = true
        myFitness.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true

        view.addSubview(tracker)
        tracker.topAnchor.constraint(equalTo: myFitness.bottomAnchor).isActive = true
        tracker.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true

        view.addSubview(welcomeback)
        welcomeback.topAnchor.constraint(equalTo: tracker.bottomAnchor, constant: 20).isActive = true
        welcomeback.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true

        view.addSubview(login)
        login.topAnchor.constraint(equalTo: welcomeback.bottomAnchor, constant: 30).isActive = true
        login.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        login.widthAnchor.constraint(equalToConstant: 250).isActive = true
        login.heightAnchor.constraint(equalToConstant: 30).isActive = true

        login.addSubview(line1)
        line1.topAnchor.constraint(equalTo: login.bottomAnchor, constant: -3).isActive = true
        line1.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        line1.widthAnchor.constraint(equalToConstant: 250).isActive = true
        line1.heightAnchor.constraint(equalToConstant: 1).isActive = true

        view.addSubview(password)
        password.topAnchor.constraint(equalTo: login.bottomAnchor, constant: 20).isActive = true
        password.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        password.widthAnchor.constraint(equalToConstant: 250).isActive = true
        password.heightAnchor.constraint(equalToConstant: 30).isActive = true

        password.addSubview(line2)
        line2.topAnchor.constraint(equalTo: password.bottomAnchor, constant: -5).isActive = true
        line2.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        line2.widthAnchor.constraint(equalToConstant: 250).isActive = true
        line2.heightAnchor.constraint(equalToConstant: 1).isActive = true

        view.addSubview(sign_in)
        sign_in.topAnchor.constraint(equalTo: line2.bottomAnchor, constant: 40).isActive = true
        sign_in.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        sign_in.widthAnchor.constraint(equalToConstant: 140).isActive = true
        sign_in.heightAnchor.constraint(equalToConstant: 32).isActive = true

        view.addSubview(create_account)
        create_account.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -60).isActive = true
        create_account.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        create_account.widthAnchor.constraint(equalToConstant: 140).isActive = true
        create_account.heightAnchor.constraint(equalToConstant: 30).isActive = true

        view.addSubview(new_to_activity_fitness)
        new_to_activity_fitness.bottomAnchor.constraint(equalTo: create_account.topAnchor, constant: -20).isActive = true
        new_to_activity_fitness.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true

        view.addSubview(line3)
        line3.topAnchor.constraint(equalTo: new_to_activity_fitness.topAnchor, constant: -40).isActive = true
        line3.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        line3.widthAnchor.constraint(equalToConstant: 300).isActive = true
        line3.heightAnchor.constraint(equalToConstant: 0.75).isActive = true
    }
    func resizeImage(image: UIImage, targetSize: CGRect) -> UIImage {
        let size = image.size;
        let widthRatio  = targetSize.width  / size.width
        let heightRatio = targetSize.height / size.height
        var newSize: CGSize
        if(widthRatio > heightRatio) {
            newSize = CGSize(width: size.width * heightRatio, height: size.height * heightRatio)
        } else {
            newSize = CGSize(width: size.width * widthRatio,  height: size.height * widthRatio)
        }
        let rect = CGRect(x: 0, y: 0, width: newSize.width, height: newSize.height)
        UIGraphicsBeginImageContextWithOptions(newSize, false, 1.0)
        image.draw(in: rect)
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return newImage!
    }
    func vecMult(a:CGPoint, b:CGFloat) -> CGPoint {
        return CGPoint(x:a.x * b, y:a.y * b)
    }

}
extension UIView {
    func addBackground(imageName: String = "YOUR DEFAULT IMAGE NAME", contentMode: UIView.ContentMode = .scaleToFill) {
        let backgroundImageView = UIImageView(frame: UIScreen.main.bounds)
        backgroundImageView.image = UIImage(named: imageName)
        backgroundImageView.contentMode = contentMode
        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false

        addSubview(backgroundImageView)
        sendSubviewToBack(backgroundImageView)

        let leadingConstraint = NSLayoutConstraint(item: backgroundImageView, attribute: .leading, relatedBy: .equal, toItem: self, attribute: .leading, multiplier: 1.0, constant: 0.0)
        let trailingConstraint = NSLayoutConstraint(item: backgroundImageView, attribute: .trailing, relatedBy: .equal, toItem: self, attribute: .trailing, multiplier: 1.0, constant: 0.0)
        let topConstraint = NSLayoutConstraint(item: backgroundImageView, attribute: .top, relatedBy: .equal, toItem: self, attribute: .top, multiplier: 1.0, constant: 0.0)
        let bottomConstraint = NSLayoutConstraint(item: backgroundImageView, attribute: .bottom, relatedBy: .equal, toItem: self, attribute: .bottom, multiplier: 1.0, constant: 0.0)

        NSLayoutConstraint.activate([leadingConstraint, trailingConstraint, topConstraint, bottomConstraint])
    }
}
