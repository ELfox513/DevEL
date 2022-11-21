.class public Lg1/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg1/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lg1/i;

.field public final b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lg1/i;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg1/i$a;->a:Lg1/i;

    iput-object p2, p0, Lg1/i$a;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lg1/i$a;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lg1/i$a;->a:Lg1/i;

    invoke-virtual {v0}, Lg1/i;->b()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lg1/i$a;->a:Lg1/i;

    invoke-virtual {v1}, Lg1/i;->b()V

    throw v0
.end method
