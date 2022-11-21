.class public final enum Lnet/bytebuddy/implementation/Implementation$Context$Default$Factory;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/Implementation$Context$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/Implementation$Context$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/Implementation$Context$Default$Factory$WithFixedSuffix;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/Implementation$Context$Default$Factory;",
        ">;",
        "Lnet/bytebuddy/implementation/Implementation$Context$Factory;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/Implementation$Context$Default$Factory;

.field public static final enum INSTANCE:Lnet/bytebuddy/implementation/Implementation$Context$Default$Factory;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/bytebuddy/implementation/Implementation$Context$Default$Factory;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/Implementation$Context$Default$Factory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/Implementation$Context$Default$Factory;->INSTANCE:Lnet/bytebuddy/implementation/Implementation$Context$Default$Factory;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/bytebuddy/implementation/Implementation$Context$Default$Factory;

    aput-object v0, v1, v2

    sput-object v1, Lnet/bytebuddy/implementation/Implementation$Context$Default$Factory;->$VALUES:[Lnet/bytebuddy/implementation/Implementation$Context$Default$Factory;

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

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/Implementation$Context$Default$Factory;
    .locals 1

    const-class v0, Lnet/bytebuddy/implementation/Implementation$Context$Default$Factory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/Implementation$Context$Default$Factory;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/Implementation$Context$Default$Factory;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/Implementation$Context$Default$Factory;->$VALUES:[Lnet/bytebuddy/implementation/Implementation$Context$Default$Factory;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/Implementation$Context$Default$Factory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/Implementation$Context$Default$Factory;

    return-object v0
.end method


# virtual methods
.method public make(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/ClassFileVersion;)Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView;
    .locals 8

    new-instance v7, Lnet/bytebuddy/implementation/Implementation$Context$Default;

    invoke-static {}, Lnet/bytebuddy/utility/RandomString;->make()Ljava/lang/String;

    move-result-object v6

    move-object v0, v7

    move-object v1, p1

    move-object v2, p4

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lnet/bytebuddy/implementation/Implementation$Context$Default;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/ClassFileVersion;Ljava/lang/String;)V

    return-object v7
.end method
