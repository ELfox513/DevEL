.class public final Lx1/s;
.super Lx1/v;
.source "SourceFile"


# static fields
.field public static final a:Lx1/s;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lx1/s;

    invoke-direct {v0}, Lx1/s;-><init>()V

    sput-object v0, Lx1/s;->a:Lx1/s;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lx1/v;-><init>()V

    return-void
.end method


# virtual methods
.method public A()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public d(Lx1/a;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    instance-of p1, p1, Lx1/s;

    return p1
.end method

.method public getType()Ly1/c;
    .locals 1

    sget-object v0, Ly1/c;->C:Ly1/c;

    return-object v0
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    const v0, 0x4466757a

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    const-string v0, "known-null"

    return-object v0
.end method

.method public toHuman()Ljava/lang/String;
    .locals 1

    const-string v0, "null"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "known-null"

    return-object v0
.end method

.method public x()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public z()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
