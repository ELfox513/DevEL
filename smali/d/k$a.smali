.class public Ld/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld0/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld/k;


# direct methods
.method public constructor <init>(Ld/k;)V
    .locals 0

    iput-object p1, p0, Ld/k$a;->a:Ld/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Ld/k$a;->a:Ld/k;

    invoke-virtual {v0, p1}, Ld/k;->c(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
