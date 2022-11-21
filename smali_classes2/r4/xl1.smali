.class public final synthetic Lr4/xl1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/qt0;


# instance fields
.field public final a:Lr4/um0;


# direct methods
.method public constructor <init>(Lr4/um0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/xl1;->a:Lr4/um0;

    return-void
.end method


# virtual methods
.method public final R(Z)V
    .locals 3

    iget-object v0, p0, Lr4/xl1;->a:Lr4/um0;

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lr4/um0;->h()V

    return-void

    :cond_0
    new-instance p1, Lr4/j52;

    const/4 v1, 0x1

    const-string v2, "Image Web View failed to load."

    invoke-direct {p1, v1, v2}, Lr4/j52;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p1}, Lr4/vm0;->f(Ljava/lang/Throwable;)Z

    return-void
.end method
