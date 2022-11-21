.class public final enum Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Unresolved;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Unresolved"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Unresolved;",
        ">;",
        "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Unresolved;

.field public static final enum INSTANCE:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Unresolved;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Unresolved;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Unresolved;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Unresolved;->INSTANCE:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Unresolved;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Unresolved;

    aput-object v0, v1, v2

    sput-object v1, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Unresolved;->$VALUES:[Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Unresolved;

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

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Unresolved;
    .locals 1

    const-class v0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Unresolved;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Unresolved;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Unresolved;
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Unresolved;->$VALUES:[Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Unresolved;

    invoke-virtual {v0}, [Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Unresolved;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Unresolved;

    return-object v0
.end method


# virtual methods
.method public getMethodTypes()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lnet/bytebuddy/description/method/MethodDescription$TypeToken;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot resolve bridge method of an illegal node"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRepresentative()Lnet/bytebuddy/description/method/MethodDescription;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot resolve the method of an illegal node"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSort()Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;->UNRESOLVED:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;

    return-object v0
.end method

.method public getVisibility()Lnet/bytebuddy/description/modifier/Visibility;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot resolve visibility of an illegal node"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
