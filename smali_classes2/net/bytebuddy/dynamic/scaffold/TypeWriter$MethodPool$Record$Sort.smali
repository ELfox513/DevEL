.class public final enum Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$Sort;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Sort"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$Sort;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$Sort;

.field public static final enum DEFINED:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$Sort;

.field public static final enum IMPLEMENTED:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$Sort;

.field public static final enum SKIPPED:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$Sort;


# instance fields
.field private final define:Z

.field private final implement:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$Sort;

    const-string v1, "SKIPPED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$Sort;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$Sort;->SKIPPED:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$Sort;

    new-instance v1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$Sort;

    const-string v3, "DEFINED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4, v2}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$Sort;-><init>(Ljava/lang/String;IZZ)V

    sput-object v1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$Sort;->DEFINED:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$Sort;

    new-instance v3, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$Sort;

    const-string v5, "IMPLEMENTED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4, v4}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$Sort;-><init>(Ljava/lang/String;IZZ)V

    sput-object v3, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$Sort;->IMPLEMENTED:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$Sort;

    const/4 v5, 0x3

    new-array v5, v5, [Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$Sort;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$Sort;->$VALUES:[Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$Sort;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$Sort;->define:Z

    iput-boolean p4, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$Sort;->implement:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$Sort;
    .locals 1

    const-class v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$Sort;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$Sort;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$Sort;
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$Sort;->$VALUES:[Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$Sort;

    invoke-virtual {v0}, [Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$Sort;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$Sort;

    return-object v0
.end method


# virtual methods
.method public isDefined()Z
    .locals 1

    iget-boolean v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$Sort;->define:Z

    return v0
.end method

.method public isImplemented()Z
    .locals 1

    iget-boolean v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$Sort;->implement:Z

    return v0
.end method
