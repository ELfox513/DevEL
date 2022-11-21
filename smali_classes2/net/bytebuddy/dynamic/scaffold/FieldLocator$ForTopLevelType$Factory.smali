.class public final enum Lnet/bytebuddy/dynamic/scaffold/FieldLocator$ForTopLevelType$Factory;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/FieldLocator$ForTopLevelType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/dynamic/scaffold/FieldLocator$ForTopLevelType$Factory;",
        ">;",
        "Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/dynamic/scaffold/FieldLocator$ForTopLevelType$Factory;

.field public static final enum INSTANCE:Lnet/bytebuddy/dynamic/scaffold/FieldLocator$ForTopLevelType$Factory;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/FieldLocator$ForTopLevelType$Factory;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/dynamic/scaffold/FieldLocator$ForTopLevelType$Factory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/dynamic/scaffold/FieldLocator$ForTopLevelType$Factory;->INSTANCE:Lnet/bytebuddy/dynamic/scaffold/FieldLocator$ForTopLevelType$Factory;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/bytebuddy/dynamic/scaffold/FieldLocator$ForTopLevelType$Factory;

    aput-object v0, v1, v2

    sput-object v1, Lnet/bytebuddy/dynamic/scaffold/FieldLocator$ForTopLevelType$Factory;->$VALUES:[Lnet/bytebuddy/dynamic/scaffold/FieldLocator$ForTopLevelType$Factory;

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

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/dynamic/scaffold/FieldLocator$ForTopLevelType$Factory;
    .locals 1

    const-class v0, Lnet/bytebuddy/dynamic/scaffold/FieldLocator$ForTopLevelType$Factory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/dynamic/scaffold/FieldLocator$ForTopLevelType$Factory;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/dynamic/scaffold/FieldLocator$ForTopLevelType$Factory;
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/FieldLocator$ForTopLevelType$Factory;->$VALUES:[Lnet/bytebuddy/dynamic/scaffold/FieldLocator$ForTopLevelType$Factory;

    invoke-virtual {v0}, [Lnet/bytebuddy/dynamic/scaffold/FieldLocator$ForTopLevelType$Factory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/dynamic/scaffold/FieldLocator$ForTopLevelType$Factory;

    return-object v0
.end method


# virtual methods
.method public make(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/FieldLocator;
    .locals 1

    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/FieldLocator$ForTopLevelType;

    invoke-direct {v0, p1}, Lnet/bytebuddy/dynamic/scaffold/FieldLocator$ForTopLevelType;-><init>(Lnet/bytebuddy/description/type/TypeDescription;)V

    return-object v0
.end method
