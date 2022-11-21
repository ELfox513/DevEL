.class public final Lx1/f;
.super Lx1/t;
.source "SourceFile"


# static fields
.field public static final b:Lx1/f;

.field public static final d:Lx1/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lx1/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lx1/f;-><init>(Z)V

    sput-object v0, Lx1/f;->b:Lx1/f;

    new-instance v0, Lx1/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lx1/f;-><init>(Z)V

    sput-object v0, Lx1/f;->d:Lx1/f;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lx1/t;-><init>(I)V

    return-void
.end method

.method public static C(I)Lx1/f;
    .locals 3

    if-nez p0, :cond_0

    sget-object p0, Lx1/f;->b:Lx1/f;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    sget-object p0, Lx1/f;->d:Lx1/f;

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bogus value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public B()Z
    .locals 1

    invoke-virtual {p0}, Lx1/t;->z()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public getType()Ly1/c;
    .locals 1

    sget-object v0, Ly1/c;->t:Ly1/c;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    const-string v0, "boolean"

    return-object v0
.end method

.method public toHuman()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lx1/f;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    goto :goto_0

    :cond_0
    const-string v0, "false"

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lx1/f;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "boolean{true}"

    goto :goto_0

    :cond_0
    const-string v0, "boolean{false}"

    :goto_0
    return-object v0
.end method
