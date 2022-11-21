.class public final synthetic Lr4/x80;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/i80;


# instance fields
.field public final a:Lr4/p90;

.field public final b:Lr4/o90;

.field public final c:Lr4/j80;


# direct methods
.method public constructor <init>(Lr4/p90;Lr4/o90;Lr4/j80;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/x80;->a:Lr4/p90;

    iput-object p2, p0, Lr4/x80;->b:Lr4/o90;

    iput-object p3, p0, Lr4/x80;->c:Lr4/j80;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 5

    iget-object v0, p0, Lr4/x80;->a:Lr4/p90;

    iget-object v1, p0, Lr4/x80;->b:Lr4/o90;

    iget-object v2, p0, Lr4/x80;->c:Lr4/j80;

    sget-object v3, Lb3/k2;->i:Lr4/c03;

    new-instance v4, Lr4/y80;

    invoke-direct {v4, v0, v1, v2}, Lr4/y80;-><init>(Lr4/p90;Lr4/o90;Lr4/j80;)V

    const-wide/16 v0, 0x2710

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
