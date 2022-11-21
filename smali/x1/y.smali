.class public final Lx1/y;
.super Lx1/g0;
.source "SourceFile"


# static fields
.field public static final d:[Ljava/lang/String;


# instance fields
.field public final a:I

.field public final b:Lx1/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "static-put"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "static-get"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "instance-put"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "instance-get"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "invoke-static"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "invoke-instance"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "invoke-constructor"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "invoke-direct"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "invoke-interface"

    aput-object v2, v0, v1

    sput-object v0, Lx1/y;->d:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILx1/a;)V
    .locals 0

    invoke-direct {p0}, Lx1/g0;-><init>()V

    iput p1, p0, Lx1/y;->a:I

    iput-object p2, p0, Lx1/y;->b:Lx1/a;

    return-void
.end method

.method public static A(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static C(I)Z
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static D(ILx1/a;)Lx1/y;
    .locals 2

    invoke-static {p0}, Lx1/y;->A(I)Z

    move-result v0

    const-string v1, "ref has wrong type: "

    if-eqz v0, :cond_1

    instance-of v0, p1, Lx1/n;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p0}, Lx1/y;->C(I)Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of v0, p1, Lx1/e;

    if-eqz v0, :cond_2

    :goto_0
    new-instance v0, Lx1/y;

    invoke-direct {v0, p0, p1}, Lx1/y;-><init>(ILx1/a;)V

    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type is out of range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static u(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lx1/y;->d:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method


# virtual methods
.method public B()Z
    .locals 1

    iget v0, p0, Lx1/y;->a:I

    invoke-static {v0}, Lx1/y;->C(I)Z

    move-result v0

    return v0
.end method

.method public d(Lx1/a;)I
    .locals 2

    check-cast p1, Lx1/y;

    invoke-virtual {p0}, Lx1/y;->n()I

    move-result v0

    invoke-virtual {p1}, Lx1/y;->n()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lx1/y;->x()Lx1/a;

    move-result-object v0

    invoke-virtual {p1}, Lx1/y;->x()Lx1/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lx1/a;->c(Lx1/a;)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0}, Lx1/y;->n()I

    move-result v0

    invoke-virtual {p1}, Lx1/y;->n()I

    move-result p1

    invoke-static {v0, p1}, Lx1/i;->a(II)I

    move-result p1

    return p1
.end method

.method public getType()Ly1/c;
    .locals 1

    sget-object v0, Ly1/c;->H:Ly1/c;

    return-object v0
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    const-string v0, "method handle"

    return-object v0
.end method

.method public n()I
    .locals 1

    iget v0, p0, Lx1/y;->a:I

    return v0
.end method

.method public toHuman()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lx1/y;->a:I

    invoke-static {v1}, Lx1/y;->u(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lx1/y;->b:Lx1/a;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "method-handle{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lx1/y;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x()Lx1/a;
    .locals 1

    iget-object v0, p0, Lx1/y;->b:Lx1/a;

    return-object v0
.end method

.method public z()Z
    .locals 1

    iget v0, p0, Lx1/y;->a:I

    invoke-static {v0}, Lx1/y;->A(I)Z

    move-result v0

    return v0
.end method
