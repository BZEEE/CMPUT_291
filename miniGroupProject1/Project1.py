


class User:
    # data object representing a users information, and possible actions
    @abstractmethod
    def getUserType(self):
        # return user type, requires implementation in specific class
        pass

    @abstractmethod
    def accessUserServices(self):
        # show the services available for a specific user, implmented differently by each possible user
        pass


class TrafficOfficer(User):
    # inherit from base properties of user
    def __init__(self):
        self.userType = None

    def getUserType(self):
        # super().getUserType()
        return "Traffic Officer"

    def accessUserServices(self):
        # super().accessUserServices()
        # show possible services for a Traffic Officer
        pass

    def issueTicket(self):
        # allow the traffic officer to issue ticket
        pass

    def findCarOwner(self):
        # allow the traffic officer to find a car owner
        pass


class RegistryAgent(User):
    # inherit from base properties of user
    def __init__(self):
        pass

    def getUserType(self):
        # super().getUserType()
        return "Registry Agent"

    def accessUserServices(self):
        # super().accessUserServices()
        # show possible services for Registry Agent
        pass

    def registerBirth(self):
        # allow registry agent to register a birth
        pass

    def registerMarriage(self):
        # allow registry agent to register a marriage
        pass

    def renewVehicleRegistration(self):
        # allow registry agent to renew their registration
        pass

    def processBillOfSale(self):
        # allow rgistry agent to process a bill of sale
        pass

    def processPayment(self):
        # allow registry agent to process a payment
        pass

    def getDriverAbstract(self):
        # allow registry agent to get a driver abstract
        pass




class SessionManager:
    @staticmethod
    def enterSession(self):
        user = self.AuthenticateUser()
        if (user != None):
            user.accessUserServices()
        else:
            print("session terminated due to unrecognized type of user\n")
        
        self.endSession()

    
    def endSession(self):
        # show closing messages for the user
        print("\n You have successfully logged out of the session \n")

    def AuthenticateUser(self):
        # dislpay login prompt for user
        validEmail = False
        validPassword = False

        while not validEmail: 
            # alternative implementation of a do-while loop in python
            uid = input("enter your email: ")
            if (not isinstance(uid, str)):
                # return to beginning of authenticate while loop
                print("email entry is not of type(str)")
                continue
            if (not AuthenticationManager.checkIfUniqueIdExists(uid)):
                # return to beginning of authenticate while loop since email is not in database
                print("email is not recognized in database, please ensure email is correct\n")
                continue
            validEmail = True

        while not validPassword:
            password = input("enter your password: ")
            if (not isinstance(password, str)):
                # return to beginning of authenticate while loop
                print("password entry is not of type(str)")
                continue
            if (AuthenticationManager.checkIfPaswwordMatchesUniqueId(uid, password)):
                # return to beginning of authenticate while loop since email is not in database
                print("password is not correct, please ensure email is correct\n")
                continue
            validPassword = True

        userType = AuthenticationManager.getUserType(uid)
        if (userType == "Registry Agent"):
            return RegistryAgent()
        elif (userType == "Traffic Officer"):
            return TrafficOfficer()
        else:
            print("Authenticated User is of an unrecognizable type\n")
            return None



class AuthenticationManager:
    @staticmethod
    def checkIfUniqueIdExists(uid):
        # return true or false depending if uid exists in database
        pass

    @staticmethod
    def checkIfPaswwordMatchesUniqueId(uid, password):
        # return true if password matches correctly with unique id
        pass
    
    @staticmethod
    def getUserType(uid):
        # return utype associated with user
        pass



class InputFormatter:
    @staticmethod
    def formatToCaseSensitiveLower(inputString):
        # convert string to lower case format
        if (isinstance(inputString, str)):
            return inputString.lower()
        else:
            return None

    @staticmethod
    def formatToCaseSensitiveUpper(inputString):
        # convert string to upper case format
        if (isinstance(inputString, str)):
            return inputString.upper()
        else:
            return None





if __name__ == "__main__":
    SessionManager.enterSession()
