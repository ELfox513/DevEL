.class public final synthetic Lr4/fx2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj5/a;


# static fields
.field public static final a:Lj5/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/fx2;

    invoke-direct {v0}, Lr4/fx2;-><init>()V

    sput-object v0, Lr4/fx2;->a:Lj5/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lj5/i;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Lj5/i;->p()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
