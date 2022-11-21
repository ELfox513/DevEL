.class public final Lg5/n6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic d:J

.field public final synthetic k:Landroid/os/Bundle;

.field public final synthetic p:Z

.field public final synthetic q:Z

.field public final synthetic r:Z

.field public final synthetic s:Ljava/lang/String;

.field public final synthetic t:Lg5/i7;


# direct methods
.method public constructor <init>(Lg5/i7;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lg5/n6;->t:Lg5/i7;

    iput-object p2, p0, Lg5/n6;->a:Ljava/lang/String;

    iput-object p3, p0, Lg5/n6;->b:Ljava/lang/String;

    iput-wide p4, p0, Lg5/n6;->d:J

    iput-object p6, p0, Lg5/n6;->k:Landroid/os/Bundle;

    iput-boolean p7, p0, Lg5/n6;->p:Z

    iput-boolean p8, p0, Lg5/n6;->q:Z

    iput-boolean p9, p0, Lg5/n6;->r:Z

    iput-object p10, p0, Lg5/n6;->s:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lg5/n6;->t:Lg5/i7;

    iget-object v1, p0, Lg5/n6;->a:Ljava/lang/String;

    iget-object v2, p0, Lg5/n6;->b:Ljava/lang/String;

    iget-wide v3, p0, Lg5/n6;->d:J

    iget-object v5, p0, Lg5/n6;->k:Landroid/os/Bundle;

    iget-boolean v6, p0, Lg5/n6;->p:Z

    iget-boolean v7, p0, Lg5/n6;->q:Z

    iget-boolean v8, p0, Lg5/n6;->r:Z

    iget-object v9, p0, Lg5/n6;->s:Ljava/lang/String;

    invoke-virtual/range {v0 .. v9}, Lg5/i7;->r(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method
