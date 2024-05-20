import "./common.tsp";

model LoginDTO {
    username: string;
    password: string;
}

model TokenResult extends DefaultResponse {
    data: {
        token: string;
        refreshToken: string;
    };
}


model UserInfo {
    userId: string;
    username: string;
    roles: string[];
    permissions: string[];
}

model UserInfoResult extends DefaultResponse {
    data: UserInfo;
}