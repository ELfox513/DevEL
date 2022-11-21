.class public final enum Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Trivial;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Trivial"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Trivial;",
        ">;",
        "Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Trivial;

.field public static final enum INSTANCE:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Trivial;

.field private static final NOT_SEALED:Ljava/net/URL;
    .annotation runtime Lnet/bytebuddy/utility/nullability/AlwaysNull;
    .end annotation
.end field

.field private static final NO_VALUE:Ljava/lang/String;
    .annotation runtime Lnet/bytebuddy/utility/nullability/AlwaysNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Trivial;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Trivial;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Trivial;->INSTANCE:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Trivial;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Trivial;

    aput-object v0, v1, v2

    sput-object v1, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Trivial;->$VALUES:[Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Trivial;

    const/4 v0, 0x0

    sput-object v0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Trivial;->NO_VALUE:Ljava/lang/String;

    sput-object v0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Trivial;->NOT_SEALED:Ljava/net/URL;

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

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Trivial;
    .locals 1

    const-class v0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Trivial;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Trivial;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Trivial;
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Trivial;->$VALUES:[Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Trivial;

    invoke-virtual {v0}, [Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Trivial;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Trivial;

    return-object v0
.end method


# virtual methods
.method public getImplementationTitle()Ljava/lang/String;
    .locals 1
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    sget-object v0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Trivial;->NO_VALUE:Ljava/lang/String;

    return-object v0
.end method

.method public getImplementationVendor()Ljava/lang/String;
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Trivial;->NO_VALUE:Ljava/lang/String;

    return-object v0
.end method

.method public getImplementationVersion()Ljava/lang/String;
    .locals 1
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    sget-object v0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Trivial;->NO_VALUE:Ljava/lang/String;

    return-object v0
.end method

.method public getSealBase()Ljava/net/URL;
    .locals 1
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    sget-object v0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Trivial;->NOT_SEALED:Ljava/net/URL;

    return-object v0
.end method

.method public getSpecificationTitle()Ljava/lang/String;
    .locals 1
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    sget-object v0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Trivial;->NO_VALUE:Ljava/lang/String;

    return-object v0
.end method

.method public getSpecificationVendor()Ljava/lang/String;
    .locals 1
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    sget-object v0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Trivial;->NO_VALUE:Ljava/lang/String;

    return-object v0
.end method

.method public getSpecificationVersion()Ljava/lang/String;
    .locals 1
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    sget-object v0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Trivial;->NO_VALUE:Ljava/lang/String;

    return-object v0
.end method

.method public isCompatibleTo(Ljava/lang/Package;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public isDefined()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
