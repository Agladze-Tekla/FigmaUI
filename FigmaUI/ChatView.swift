//
//  ChatView.swift
//  FigmaUI
//
//  Created by Tekla on 12/6/23.
//

import SwiftUI

struct ChatUser {
    let id = UUID()
    let profileImage: String
    let name: String
    let message: String
    let time: String
}

struct ChatView: View {
    let chatData = ChatUserData()
   // let chatMessages = chatData.chatUsersList
    var body: some View {
        VStack {
            Text("Chat")
                .foregroundColor(.white)
                .padding()
            VStack {
                ScrollView {
                    //ForEach(chatMessages) { chat in
                        HStack {
                            /*
                            Image(chat.profileImage)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .clipShape(Circle())
                            VStack {
                                Text(chat.name)
                                    .foregroundColor(.white)
                                Text(chat.message)
                                    .foregroungColor(.white)
                            }
                            Text(chat.time)
                                .foregrounfColor(.white)
 */
                            Button(action: {
                                print("Clear Chat")
                            }) {
                            Text("Clear Chat")
                                .font(.custom("Inter-Regular", size: 20))
                                .padding(.horizontal, 44)
                                .padding(.vertical, 14)
                                .background(Color(red: 36/255, green: 39/255, blue: 96/255))
                                .foregroundColor(.white)
                                .font(.headline)
                                .cornerRadius(6)
                           // }
                        }
                    }
                }
            }
        }
        .background(Color(red: 51/255, green: 51/255, blue: 51/255))
    }
}

struct ChatUserData {
    let chatUsersList: [ChatUser] = [
    ChatUser(profileImage: "kungfupanda", name: "Alex", message: "Nice choice of words. Did you use a thesaurus or just random selection?", time: "12:00"),
            ChatUser(profileImage: "kungfupanda", name: "Sarah", message: "Oh, another groundbreaking message. Truly riveting.", time: "01:30"),
            ChatUser(profileImage: "kungfupanda", name: "Ryan", message: "Your jokes are like fine wine – they get better with age... or not.", time: "03:45"),
            ChatUser(profileImage: "kungfupanda", name: "Olivia", message: "Ah, another pun. Your creativity knows no bounds... literally.", time: "04:20"),
            ChatUser(profileImage: "kungfupanda", name: "Chris", message: "Oh, look who's bringing the sunshine into the conversation... not.", time: "06:15"),
            ChatUser(profileImage: "kungfupanda", name: "Emma", message: "Your message was like a gentle breeze – refreshing... for someone else.", time: "08:30"),
            ChatUser(profileImage: "kungfupanda", name: "Matthew", message: "Your puns are truly punbelievable. Keep 'em coming... or don't.", time: "10:10"),
            ChatUser(profileImage: "kungfupanda", name: "Ava", message: "Is this your attempt at humor? It's almost as funny as a math class.", time: "11:55"),
            ChatUser(profileImage: "kungfupanda", name: "James", message: "You're like a ray of sunshine... if sunshine were optional.", time: "02:25"),
            ChatUser(profileImage: "kungfupanda", name: "Emily", message: "Another masterpiece of wit. It's a good thing we're not judging.", time: "05:40"),
            ChatUser(profileImage: "kungfupanda", name: "Daniel", message: "Your jokes are a riot... of awkwardness and confusion.", time: "07:20"),
            ChatUser(profileImage: "kungfupanda", name: "Sophia", message: "You possess a wry sense of humor. Or was that just dry?", time: "09:45"),
            ChatUser(profileImage: "kungfupanda", name: "William", message: "Your puns are so good, they're pun-ishingly punny... or not.", time: "03:15"),
            ChatUser(profileImage: "kungfupanda", name: "Isabella", message: "Sweet message. It's almost like sugar-coated sarcasm.", time: "06:30"),
            ChatUser(profileImage: "kungfupanda", name: "Michael", message: "You're the life of the chat party... said no one ever.", time: "08:50"),
]
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
