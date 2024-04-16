import customtkinter as ctk
from CTkMessagebox import CTkMessagebox


class LoginWindow:
    def __init__(self, master):
        self.master = master
        self.master.title("Login")

        # Calculate center coordinates
        screen_width = master.winfo_screenwidth()
        screen_height = master.winfo_screenheight()
        x_coordinate = (screen_width - 300) // 2  # 300 is the width of the window
        y_coordinate = (screen_height - 150) // 2  # 150 is the height of the window

        # Set window position
        self.master.geometry(f"300x150+{x_coordinate}+{y_coordinate}")

        # Create a frame for the login and password fields
        self.frame = ctk.CTkFrame(master)
        self.frame.pack(padx=10, pady=10)

        # Create username label and entry
        self.username_label = ctk.CTkLabel(self.frame, text="Username:")
        self.username_label.grid(row=0, column=0, padx=5, pady=5, sticky="e")
        self.username_entry = ctk.CTkEntry(self.frame)
        self.username_entry.grid(row=0, column=1, padx=5, pady=5)

        # Create password label and entry
        self.password_label = ctk.CTkLabel(self.frame, text="Password:")
        self.password_label.grid(row=1, column=0, padx=5, pady=5, sticky="e")
        self.password_entry = ctk.CTkEntry(self.frame, show="*")
        self.password_entry.grid(row=1, column=1, padx=5, pady=5)

        # Create login button
        self.login_button = ctk.CTkButton(
            master, text="Login", command=self.authenticate
        )
        self.login_button.pack(pady=5)

    def authenticate(self):
        username = self.username_entry.get()
        password = self.password_entry.get()

        # Check if username and password are correct
        if username == "admin" and password == "password":
            CTkMessagebox(
                title="Successful Login",
                message="You are logged in.",
                icon="check",
                option_1="Ok",
            )
            # Open the test window on successful login
            TestWindow(self.master)
        else:
            CTkMessagebox(
                title="Failed Login",
                message="Wrong username/password. Please try again!",
                icon="cancel",
                option_1="Retry",
            )


class TestWindow:
    def __init__(self, master):
        self.master = master
        self.master.title("Test Window")
        # clearing the window
        for widget in self.master.winfo_children():
            widget.pack_forget()


def main():
    root = ctk.CTk()
    login_window = LoginWindow(root)
    root.mainloop()


if __name__ == "__main__":
    main()


# import customtkinter as ctk
# from CTkMessagebox import CTkMessagebox


# class LoginWindow:
#     def __init__(self, master):
#         self.master = master
#         self.master.title("Login")

#         # Calculate center coordinates
#         screen_width = master.winfo_screenwidth()
#         screen_height = master.winfo_screenheight()
#         x_coordinate = (screen_width - 300) // 2  # 300 is the width of the window
#         y_coordinate = (screen_height - 150) // 2  # 150 is the height of the window

#         # Set window position
#         self.master.geometry(f"300x150+{x_coordinate}+{y_coordinate}")

#         # Create username label and entry
#         self.username_label = ctk.CTkLabel(master, text="Username:")
#         self.username_label.grid(row=0, column=0, padx=5, pady=5, sticky="e")
#         self.username_entry = ctk.CTkEntry(master)
#         self.username_entry.grid(row=0, column=1, padx=5, pady=5)

#         # Create password label and entry
#         self.password_label = ctk.CTkLabel(master, text="Password:")
#         self.password_label.grid(row=1, column=0, padx=5, pady=5, sticky="e")
#         self.password_entry = ctk.CTkEntry(master, show="*")
#         self.password_entry.grid(row=1, column=1, padx=5, pady=5)

#         # Create login button
#         self.login_button = ctk.CTkButton(
#             master, text="Login", command=self.authenticate
#         )
#         self.login_button.grid(row=2, column=0, columnspan=2, padx=5, pady=5)

#     def authenticate(self):
#         username = self.username_entry.get()
#         password = self.password_entry.get()

#         # Check if username and password are correct
#         if username == "admin" and password == "password":
#             CTkMessagebox(
#                 title="Succesful Login",
#                 message="You are logged in.",
#                 icon="check",
#                 option_1="Ok",
#             )
#             # Open the test window on successful login
#             TestWindow(self.master)
#         else:
#             CTkMessagebox(
#                 title="Failed Login",
#                 message="Wrong username/password. Please try again!",
#                 icon="cancel",
#                 option_1="Retry",
#             )


# class TestWindow:
#     def __init__(self, master):
#         self.master = master
#         self.master.title("test window")
#         pass


# def main():
#     # Create main window
#     root = ctk.CTk()
#     # Instantiate the LoginWindow class
#     login_window = LoginWindow(root)
#     # Run the main event loop
#     root.mainloop()


# if __name__ == "__main__":
#     main()


# # import customtkinter as ctk
# # from CTkMessagebox import CTkMessagebox


# # def authenticate():
# #     username = username_entry.get()
# #     password = password_entry.get()

# #     # Check if username and password are correct
# #     if username == "admin" and password == "password":
# #         CTkMessagebox(
# #             title="Succesful Login",
# #             message="You are logged in.",
# #             icon="check",
# #             option_1="Ok",
# #         )
# #     else:
# #         CTkMessagebox(
# #             title="Failed Login",
# #             message="Wrong username/password. Please try again!",
# #             icon="cancel",
# #             option_1="Retry",
# #         )


# # # Create main window
# # root = ctk.CTk()
# # root.title("Login")

# # # Create username label and entry
# # username_label = ctk.CTkLabel(root, text="Username:")
# # username_label.grid(row=0, column=0, padx=5, pady=5, sticky="e")
# # username_entry = ctk.CTkEntry(root)
# # username_entry.grid(row=0, column=1, padx=5, pady=5)

# # # Create password label and entry
# # password_label = ctk.CTkLabel(root, text="Password:")
# # password_label.grid(row=1, column=0, padx=5, pady=5, sticky="e")
# # password_entry = ctk.CTkEntry(root, show="*")
# # password_entry.grid(row=1, column=1, padx=5, pady=5)

# # # Create login button
# # login_button = ctk.CTkButton(root, text="Login", command=authenticate)
# # login_button.grid(row=2, column=0, columnspan=2, padx=5, pady=5)

# # # Run the main event loop
# # root.mainloop()
