import "./common.tsp";

model LoginDTO {
    username: string;
    password: string;
}

model LoginResult extends DefaultResponse {
    data: {
        token: string;
        refreshToken: string;
    };
}
