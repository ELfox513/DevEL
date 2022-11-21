.class public La0/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc0/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La0/e;->d(Landroid/content/Context;La0/d;ILjava/util/concurrent/Executor;La0/a;)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc0/a<",
        "La0/e$e;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:La0/a;


# direct methods
.method public constructor <init>(La0/a;)V
    .locals 0

    iput-object p1, p0, La0/e$b;->a:La0/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(La0/e$e;)V
    .locals 1

    iget-object v0, p0, La0/e$b;->a:La0/a;

    invoke-virtual {v0, p1}, La0/a;->b(La0/e$e;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, La0/e$e;

    invoke-virtual {p0, p1}, La0/e$b;->a(La0/e$e;)V

    return-void
.end method
