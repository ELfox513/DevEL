.class public final Lr4/cc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/wa;


# instance fields
.field public a:Landroid/os/Message;

.field public b:Lr4/dc;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lr4/bc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Message;Lr4/dc;)Lr4/cc;
    .locals 0

    iput-object p1, p0, Lr4/cc;->a:Landroid/os/Message;

    iput-object p2, p0, Lr4/cc;->b:Lr4/dc;

    return-object p0
.end method

.method public final b(Landroid/os/Handler;)Z
    .locals 1

    iget-object v0, p0, Lr4/cc;->a:Landroid/os/Message;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    move-result p1

    invoke-virtual {p0}, Lr4/cc;->c()V

    return p1
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lr4/cc;->a:Landroid/os/Message;

    iput-object v0, p0, Lr4/cc;->b:Lr4/dc;

    invoke-static {p0}, Lr4/dc;->a(Lr4/cc;)V

    return-void
.end method

.method public final zza()V
    .locals 1

    iget-object v0, p0, Lr4/cc;->a:Landroid/os/Message;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual {p0}, Lr4/cc;->c()V

    return-void
.end method
