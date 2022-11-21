.class public final enum Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver$ForUnnamedType;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ForUnnamedType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver$ForUnnamedType;",
        ">;",
        "Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver$ForUnnamedType;

.field public static final enum INSTANCE:Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver$ForUnnamedType;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver$ForUnnamedType;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver$ForUnnamedType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver$ForUnnamedType;->INSTANCE:Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver$ForUnnamedType;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver$ForUnnamedType;

    aput-object v0, v1, v2

    sput-object v1, Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver$ForUnnamedType;->$VALUES:[Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver$ForUnnamedType;

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

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver$ForUnnamedType;
    .locals 1

    const-class v0, Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver$ForUnnamedType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver$ForUnnamedType;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver$ForUnnamedType;
    .locals 1

    sget-object v0, Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver$ForUnnamedType;->$VALUES:[Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver$ForUnnamedType;

    invoke-virtual {v0}, [Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver$ForUnnamedType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver$ForUnnamedType;

    return-object v0
.end method


# virtual methods
.method public resolve(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/String;
    .locals 0

    invoke-interface {p1}, Lnet/bytebuddy/description/NamedElement$WithRuntimeName;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
