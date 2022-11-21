.class public final Lr4/sv0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lr4/eu0;

.field public b:Lr4/qw0;

.field public c:Lr4/qt2;

.field public d:Lr4/cx0;

.field public e:Lr4/eq2;


# direct methods
.method public synthetic constructor <init>(Lr4/fw0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lr4/eu0;)Lr4/sv0;
    .locals 0

    iput-object p1, p0, Lr4/sv0;->a:Lr4/eu0;

    return-object p0
.end method

.method public final b(Lr4/qw0;)Lr4/sv0;
    .locals 0

    iput-object p1, p0, Lr4/sv0;->b:Lr4/qw0;

    return-object p0
.end method

.method public final c()Lr4/bu0;
    .locals 8

    iget-object v0, p0, Lr4/sv0;->a:Lr4/eu0;

    const-class v1, Lr4/eu0;

    invoke-static {v0, v1}, Lr4/ds3;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lr4/sv0;->b:Lr4/qw0;

    const-class v1, Lr4/qw0;

    invoke-static {v0, v1}, Lr4/ds3;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lr4/sv0;->c:Lr4/qt2;

    if-nez v0, :cond_0

    new-instance v0, Lr4/qt2;

    invoke-direct {v0}, Lr4/qt2;-><init>()V

    iput-object v0, p0, Lr4/sv0;->c:Lr4/qt2;

    :cond_0
    iget-object v0, p0, Lr4/sv0;->d:Lr4/cx0;

    if-nez v0, :cond_1

    new-instance v0, Lr4/cx0;

    invoke-direct {v0}, Lr4/cx0;-><init>()V

    iput-object v0, p0, Lr4/sv0;->d:Lr4/cx0;

    :cond_1
    iget-object v0, p0, Lr4/sv0;->e:Lr4/eq2;

    if-nez v0, :cond_2

    new-instance v0, Lr4/eq2;

    invoke-direct {v0}, Lr4/eq2;-><init>()V

    iput-object v0, p0, Lr4/sv0;->e:Lr4/eq2;

    :cond_2
    new-instance v0, Lr4/ow0;

    iget-object v2, p0, Lr4/sv0;->a:Lr4/eu0;

    iget-object v3, p0, Lr4/sv0;->b:Lr4/qw0;

    iget-object v4, p0, Lr4/sv0;->c:Lr4/qt2;

    iget-object v5, p0, Lr4/sv0;->d:Lr4/cx0;

    iget-object v6, p0, Lr4/sv0;->e:Lr4/eq2;

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lr4/ow0;-><init>(Lr4/eu0;Lr4/qw0;Lr4/qt2;Lr4/cx0;Lr4/eq2;Lr4/fw0;)V

    return-object v0
.end method
