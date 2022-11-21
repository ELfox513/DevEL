.class public final synthetic Lr4/ya;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final a:Lr4/db;


# direct methods
.method public constructor <init>(Lr4/db;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/ya;->a:Lr4/db;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget-object v0, p0, Lr4/ya;->a:Lr4/db;

    invoke-virtual {v0, p1}, Lr4/db;->g(Landroid/os/Message;)Z

    const/4 p1, 0x1

    return p1
.end method
