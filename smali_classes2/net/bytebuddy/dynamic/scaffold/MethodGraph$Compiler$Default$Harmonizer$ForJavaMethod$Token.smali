.class public Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer$ForJavaMethod$Token;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer$ForJavaMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Token"
.end annotation


# instance fields
.field private final hashCode:I

.field private final typeToken:Lnet/bytebuddy/description/method/MethodDescription$TypeToken;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/method/MethodDescription$TypeToken;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer$ForJavaMethod$Token;->typeToken:Lnet/bytebuddy/description/method/MethodDescription$TypeToken;

    invoke-virtual {p1}, Lnet/bytebuddy/description/method/MethodDescription$TypeToken;->getParameterTypes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->hashCode()I

    move-result p1

    iput p1, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer$ForJavaMethod$Token;->hashCode:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer$ForJavaMethod$Token;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer$ForJavaMethod$Token;->typeToken:Lnet/bytebuddy/description/method/MethodDescription$TypeToken;

    invoke-virtual {v0}, Lnet/bytebuddy/description/method/MethodDescription$TypeToken;->getParameterTypes()Ljava/util/List;

    move-result-object v0

    check-cast p1, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer$ForJavaMethod$Token;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer$ForJavaMethod$Token;->typeToken:Lnet/bytebuddy/description/method/MethodDescription$TypeToken;

    invoke-virtual {p1}, Lnet/bytebuddy/description/method/MethodDescription$TypeToken;->getParameterTypes()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer$ForJavaMethod$Token;->hashCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer$ForJavaMethod$Token;->typeToken:Lnet/bytebuddy/description/method/MethodDescription$TypeToken;

    invoke-virtual {v0}, Lnet/bytebuddy/description/method/MethodDescription$TypeToken;->getParameterTypes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
