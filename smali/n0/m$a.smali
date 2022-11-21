.class public Ln0/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln0/m;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Runnable;

.field public final synthetic b:Ln0/m;


# direct methods
.method public constructor <init>(Ln0/m;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Ln0/m$a;->b:Ln0/m;

    iput-object p2, p0, Ln0/m$a;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Ln0/m$a;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Ln0/m$a;->b:Ln0/m;

    invoke-virtual {v0}, Ln0/m;->a()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ln0/m$a;->b:Ln0/m;

    invoke-virtual {v1}, Ln0/m;->a()V

    throw v0
.end method
