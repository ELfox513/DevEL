.class public Lw5/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw5/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lw5/a;)V
    .locals 1

    invoke-static {}, Lu5/f;->f()Lu5/f;

    move-result-object p1

    const-string v0, "Could not register handler for breadcrumbs events."

    invoke-virtual {p1, v0}, Lu5/f;->b(Ljava/lang/String;)V

    return-void
.end method
