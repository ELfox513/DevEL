.class public final synthetic Lr4/up0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/rf;


# static fields
.field public static final a:Lr4/rf;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/up0;

    invoke-direct {v0}, Lr4/up0;-><init>()V

    sput-object v0, Lr4/up0;->a:Lr4/rf;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()[Lr4/pf;
    .locals 4

    sget v0, Lr4/xp0;->H:I

    const/4 v0, 0x3

    new-array v0, v0, [Lr4/pf;

    new-instance v1, Lr4/ch;

    invoke-direct {v1}, Lr4/ch;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lr4/hg;

    invoke-direct {v1, v2}, Lr4/hg;-><init>(I)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Lr4/yg;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Lr4/yg;-><init>(ILr4/il;Lr4/eh;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method
