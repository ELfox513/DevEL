.class public final enum Lk7/l;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lo7/a0$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk7/l$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lk7/l;",
        ">;",
        "Lo7/a0$c;"
    }
.end annotation


# static fields
.field public static final enum b:Lk7/l;

.field public static final enum d:Lk7/l;

.field public static final k:Lo7/a0$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo7/a0$d<",
            "Lk7/l;",
            ">;"
        }
    .end annotation
.end field

.field public static final synthetic p:[Lk7/l;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lk7/l;

    const-string v1, "SESSION_VERBOSITY_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lk7/l;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lk7/l;->b:Lk7/l;

    new-instance v1, Lk7/l;

    const-string v3, "GAUGES_AND_SYSTEM_EVENTS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lk7/l;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lk7/l;->d:Lk7/l;

    const/4 v3, 0x2

    new-array v3, v3, [Lk7/l;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lk7/l;->p:[Lk7/l;

    new-instance v0, Lk7/l$a;

    invoke-direct {v0}, Lk7/l$a;-><init>()V

    sput-object v0, Lk7/l;->k:Lo7/a0$d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lk7/l;->a:I

    return-void
.end method

.method public static c(I)Lk7/l;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lk7/l;->d:Lk7/l;

    return-object p0

    :cond_1
    sget-object p0, Lk7/l;->b:Lk7/l;

    return-object p0
.end method

.method public static d()Lo7/a0$e;
    .locals 1

    sget-object v0, Lk7/l$b;->a:Lo7/a0$e;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lk7/l;
    .locals 1

    const-class v0, Lk7/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lk7/l;

    return-object p0
.end method

.method public static values()[Lk7/l;
    .locals 1

    sget-object v0, Lk7/l;->p:[Lk7/l;

    invoke-virtual {v0}, [Lk7/l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lk7/l;

    return-object v0
.end method


# virtual methods
.method public final e()I
    .locals 1

    iget v0, p0, Lk7/l;->a:I

    return v0
.end method
