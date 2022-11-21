.class public Lr4/jj1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr4/no2;


# direct methods
.method public constructor <init>(Lr4/no2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/jj1;->a:Lr4/no2;

    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lr4/jj1;->a:Lr4/no2;

    iget-boolean v0, v0, Lr4/no2;->G:Z

    return v0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lr4/jj1;->a:Lr4/no2;

    iget-boolean v0, v0, Lr4/no2;->P:Z

    return v0
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lr4/jj1;->a:Lr4/no2;

    iget-boolean v0, v0, Lr4/no2;->F:Z

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
