.class public final synthetic Lt4/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj5/a;


# instance fields
.field public final synthetic a:Lt4/r;


# direct methods
.method public synthetic constructor <init>(Lt4/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt4/q;->a:Lt4/r;

    return-void
.end method


# virtual methods
.method public final a(Lj5/i;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lt4/q;->a:Lt4/r;

    invoke-static {v0, p1}, Lt4/r;->b(Lt4/r;Lj5/i;)Lj5/i;

    move-result-object p1

    return-object p1
.end method
