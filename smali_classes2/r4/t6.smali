.class public final Lr4/t6;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lr4/t6;

.field public static final c:Lr4/d3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/d3<",
            "Lr4/t6;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lr4/va;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/s6;

    invoke-direct {v0}, Lr4/s6;-><init>()V

    invoke-virtual {v0}, Lr4/s6;->e()Lr4/t6;

    move-result-object v0

    sput-object v0, Lr4/t6;->b:Lr4/t6;

    sget-object v0, Lr4/r6;->a:Lr4/d3;

    sput-object v0, Lr4/t6;->c:Lr4/d3;

    return-void
.end method

.method public synthetic constructor <init>(Lr4/va;Lr4/x6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/t6;->a:Lr4/va;

    return-void
.end method

.method public static synthetic a(Lr4/t6;)Lr4/va;
    .locals 0

    iget-object p0, p0, Lr4/t6;->a:Lr4/va;

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lr4/t6;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lr4/t6;

    iget-object v0, p0, Lr4/t6;->a:Lr4/va;

    iget-object p1, p1, Lr4/t6;->a:Lr4/va;

    invoke-virtual {v0, p1}, Lr4/va;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lr4/t6;->a:Lr4/va;

    invoke-virtual {v0}, Lr4/va;->hashCode()I

    move-result v0

    return v0
.end method
