.class public final Lg5/f8;
.super Lg5/n;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lg5/w8;


# direct methods
.method public constructor <init>(Lg5/w8;Lg5/x5;)V
    .locals 0

    iput-object p1, p0, Lg5/f8;->e:Lg5/w8;

    invoke-direct {p0, p2}, Lg5/n;-><init>(Lg5/x5;)V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 3

    iget-object v0, p0, Lg5/f8;->e:Lg5/w8;

    invoke-virtual {v0}, Lg5/v5;->c()V

    invoke-virtual {v0}, Lg5/w8;->u()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->F()Lg5/q3;

    move-result-object v1

    invoke-virtual {v1}, Lg5/q3;->q()Lg5/o3;

    move-result-object v1

    const-string v2, "Inactivity, disconnecting from the service"

    invoke-virtual {v1, v2}, Lg5/o3;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lg5/w8;->N()V

    return-void
.end method
