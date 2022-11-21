.class public Lcom/badlogic/gdx/backends/android/AndroidNet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/Net;


# instance fields
.field public final a:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

.field public b:Lcom/badlogic/gdx/net/NetJavaImpl;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidNet;->a:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    new-instance p1, Lcom/badlogic/gdx/net/NetJavaImpl;

    iget p2, p2, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->maxNetThreads:I

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/net/NetJavaImpl;-><init>(I)V

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidNet;->b:Lcom/badlogic/gdx/net/NetJavaImpl;

    return-void
.end method


# virtual methods
.method public cancelHttpRequest(Lcom/badlogic/gdx/Net$HttpRequest;)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidNet;->b:Lcom/badlogic/gdx/net/NetJavaImpl;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/net/NetJavaImpl;->cancelHttpRequest(Lcom/badlogic/gdx/Net$HttpRequest;)V

    return-void
.end method

.method public newClientSocket(Lcom/badlogic/gdx/Net$Protocol;Ljava/lang/String;ILcom/badlogic/gdx/net/SocketHints;)Lcom/badlogic/gdx/net/Socket;
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/net/NetJavaSocketImpl;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/net/NetJavaSocketImpl;-><init>(Lcom/badlogic/gdx/Net$Protocol;Ljava/lang/String;ILcom/badlogic/gdx/net/SocketHints;)V

    return-object v0
.end method

.method public newServerSocket(Lcom/badlogic/gdx/Net$Protocol;ILcom/badlogic/gdx/net/ServerSocketHints;)Lcom/badlogic/gdx/net/ServerSocket;
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/net/NetJavaServerSocketImpl;

    invoke-direct {v0, p1, p2, p3}, Lcom/badlogic/gdx/net/NetJavaServerSocketImpl;-><init>(Lcom/badlogic/gdx/Net$Protocol;ILcom/badlogic/gdx/net/ServerSocketHints;)V

    return-object v0
.end method

.method public newServerSocket(Lcom/badlogic/gdx/Net$Protocol;Ljava/lang/String;ILcom/badlogic/gdx/net/ServerSocketHints;)Lcom/badlogic/gdx/net/ServerSocket;
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/net/NetJavaServerSocketImpl;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/net/NetJavaServerSocketImpl;-><init>(Lcom/badlogic/gdx/Net$Protocol;Ljava/lang/String;ILcom/badlogic/gdx/net/ServerSocketHints;)V

    return-object v0
.end method

.method public openURI(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidNet;->a:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {p1}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Activity;

    if-nez p1, :cond_0

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidNet;->a:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public sendHttpRequest(Lcom/badlogic/gdx/Net$HttpRequest;Lcom/badlogic/gdx/Net$HttpResponseListener;)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidNet;->b:Lcom/badlogic/gdx/net/NetJavaImpl;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/net/NetJavaImpl;->sendHttpRequest(Lcom/badlogic/gdx/Net$HttpRequest;Lcom/badlogic/gdx/Net$HttpResponseListener;)V

    return-void
.end method
