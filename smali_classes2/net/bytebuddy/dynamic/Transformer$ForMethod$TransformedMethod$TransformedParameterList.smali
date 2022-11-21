.class public Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod$TransformedParameterList;
.super Lnet/bytebuddy/description/method/ParameterList$AbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TransformedParameterList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/bytebuddy/description/method/ParameterList$AbstractBase<",
        "Lnet/bytebuddy/description/method/ParameterDescription;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;)V
    .locals 0

    iput-object p1, p0, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod$TransformedParameterList;->a:Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;

    invoke-direct {p0}, Lnet/bytebuddy/description/method/ParameterList$AbstractBase;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod$TransformedParameterList;->get(I)Lnet/bytebuddy/description/method/ParameterDescription;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lnet/bytebuddy/description/method/ParameterDescription;
    .locals 3

    new-instance v0, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod$TransformedParameter;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod$TransformedParameterList;->a:Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;

    invoke-static {v1}, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;->d(Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;)Lnet/bytebuddy/description/method/MethodDescription$Token;

    move-result-object v2

    invoke-virtual {v2}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getParameterTokens()Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;->get(I)Lnet/bytebuddy/description/ByteCodeElement$Token;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/method/ParameterDescription$Token;

    invoke-direct {v0, v1, p1, v2}, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod$TransformedParameter;-><init>(Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;ILnet/bytebuddy/description/method/ParameterDescription$Token;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod$TransformedParameterList;->a:Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;

    invoke-static {v0}, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;->d(Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;)Lnet/bytebuddy/description/method/MethodDescription$Token;

    move-result-object v0

    invoke-virtual {v0}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getParameterTokens()Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;

    move-result-object v0

    invoke-virtual {v0}, Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;->size()I

    move-result v0

    return v0
.end method
