.class public abstract Lk0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk0/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Landroidx/lifecycle/g;)Lk0/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/lifecycle/g;",
            ":",
            "Landroidx/lifecycle/u;",
            ">(TT;)",
            "Lk0/a;"
        }
    .end annotation

    new-instance v0, Lk0/b;

    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/u;

    invoke-interface {v1}, Landroidx/lifecycle/u;->getViewModelStore()Landroidx/lifecycle/t;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lk0/b;-><init>(Landroidx/lifecycle/g;Landroidx/lifecycle/t;)V

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract c(ILandroid/os/Bundle;Lk0/a$a;)Ll0/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Lk0/a$a<",
            "TD;>;)",
            "Ll0/b<",
            "TD;>;"
        }
    .end annotation
.end method

.method public abstract d()V
.end method
