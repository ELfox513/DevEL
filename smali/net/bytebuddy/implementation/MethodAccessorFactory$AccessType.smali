.class public final enum Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/MethodAccessorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AccessType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;

.field public static final enum DEFAULT:Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;

.field public static final enum PUBLIC:Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;


# instance fields
.field private final visibility:Lnet/bytebuddy/description/modifier/Visibility;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;

    sget-object v1, Lnet/bytebuddy/description/modifier/Visibility;->PUBLIC:Lnet/bytebuddy/description/modifier/Visibility;

    const-string v2, "PUBLIC"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/modifier/Visibility;)V

    sput-object v0, Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;->PUBLIC:Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;

    new-instance v1, Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;

    sget-object v2, Lnet/bytebuddy/description/modifier/Visibility;->PACKAGE_PRIVATE:Lnet/bytebuddy/description/modifier/Visibility;

    const-string v4, "DEFAULT"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/modifier/Visibility;)V

    sput-object v1, Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;->DEFAULT:Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;

    const/4 v2, 0x2

    new-array v2, v2, [Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;

    aput-object v0, v2, v3

    aput-object v1, v2, v5

    sput-object v2, Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;->$VALUES:[Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILnet/bytebuddy/description/modifier/Visibility;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/modifier/Visibility;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;->visibility:Lnet/bytebuddy/description/modifier/Visibility;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;
    .locals 1

    const-class v0, Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;->$VALUES:[Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;

    return-object v0
.end method


# virtual methods
.method public getVisibility()Lnet/bytebuddy/description/modifier/Visibility;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;->visibility:Lnet/bytebuddy/description/modifier/Visibility;

    return-object v0
.end method
