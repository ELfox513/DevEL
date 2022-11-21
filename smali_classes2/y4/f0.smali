.class public final synthetic Ly4/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ly4/i0;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ly4/i0;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly4/f0;->a:Ly4/i0;

    iput-object p2, p0, Ly4/f0;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ly4/f0;->a:Ly4/i0;

    iget-object v1, p0, Ly4/f0;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Ly4/h1;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method
