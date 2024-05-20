model DefaultResponse {
    code: string;
    message: string;
}

model DefaultSuccessResponse extends DefaultResponse {
    code: "0000";
    message: "";
    data: null;
}