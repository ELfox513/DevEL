.class public final Lq3/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx3/p$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq3/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lx3/p$a<",
        "Lq3/c;",
        "Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lq3/h;)V
    .locals 0

    invoke-direct {p0}, Lq3/b$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu3/l;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lq3/c;

    invoke-virtual {p1}, Lq3/c;->a()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object p1

    return-object p1
.end method
