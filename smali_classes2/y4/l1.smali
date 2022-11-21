.class public final Ly4/l1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly4/k1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ly4/k1<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final b:Ly4/l1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly4/l1<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ly4/l1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ly4/l1;-><init>(Ljava/lang/Object;)V

    sput-object v0, Ly4/l1;->b:Ly4/l1;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly4/l1;->a:Ljava/lang/Object;

    return-void
.end method

.method public static b(Ljava/lang/Object;)Ly4/k1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ly4/k1<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ly4/l1;

    if-eqz p0, :cond_0

    invoke-direct {v0, p0}, Ly4/l1;-><init>(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "instance cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Ly4/l1;->a:Ljava/lang/Object;

    return-object v0
.end method
