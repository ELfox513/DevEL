.class public final enum Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer$ForJavaMethod;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ForJavaMethod"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer$ForJavaMethod$Token;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer$ForJavaMethod;",
        ">;",
        "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer<",
        "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer$ForJavaMethod$Token;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer$ForJavaMethod;

.field public static final enum INSTANCE:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer$ForJavaMethod;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer$ForJavaMethod;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer$ForJavaMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer$ForJavaMethod;->INSTANCE:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer$ForJavaMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer$ForJavaMethod;

    aput-object v0, v1, v2

    sput-object v1, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer$ForJavaMethod;->$VALUES:[Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer$ForJavaMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer$ForJavaMethod;
    .locals 1

    const-class v0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer$ForJavaMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer$ForJavaMethod;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer$ForJavaMethod;
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer$ForJavaMethod;->$VALUES:[Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer$ForJavaMethod;

    invoke-virtual {v0}, [Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer$ForJavaMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer$ForJavaMethod;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic harmonize(Lnet/bytebuddy/description/method/MethodDescription$TypeToken;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer$ForJavaMethod;->harmonize(Lnet/bytebuddy/description/method/MethodDescription$TypeToken;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer$ForJavaMethod$Token;

    move-result-object p1

    return-object p1
.end method

.method public harmonize(Lnet/bytebuddy/description/method/MethodDescription$TypeToken;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer$ForJavaMethod$Token;
    .locals 1

    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer$ForJavaMethod$Token;

    invoke-direct {v0, p1}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Harmonizer$ForJavaMethod$Token;-><init>(Lnet/bytebuddy/description/method/MethodDescription$TypeToken;)V

    return-object v0
.end method
