.class public Lcom/prineside/tdi2/screens/MapEditorScreen;
.super Lcom/prineside/tdi2/Screen;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;,
        Lcom/prineside/tdi2/screens/MapEditorScreen$_MapShiftButtonsListener;,
        Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;,
        Lcom/prineside/tdi2/screens/MapEditorScreen$_InventorySystemListener;,
        Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorInventoryMenuListener;,
        Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorTileInfoMenuListener;,
        Lcom/prineside/tdi2/screens/MapEditorScreen$_ProgressManagerListener;,
        Lcom/prineside/tdi2/screens/MapEditorScreen$_MapListener;,
        Lcom/prineside/tdi2/screens/MapEditorScreen$_DragInputProcessor;,
        Lcom/prineside/tdi2/screens/MapEditorScreen$_RemoveInputProcessor;,
        Lcom/prineside/tdi2/screens/MapEditorScreen$_InsertInputProcessor;,
        Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawInsertInputProcessor;,
        Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawRemoveInputProcessor;,
        Lcom/prineside/tdi2/screens/MapEditorScreen$_ScrollFocusInputProcessor;
    }
.end annotation


# static fields
.field public static L:Lcom/badlogic/gdx/utils/ObjectSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectSet<",
            "Lcom/prineside/tdi2/enums/TileType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:Lcom/prineside/tdi2/Map;

.field public B:Lcom/prineside/tdi2/UserMap;

.field public C:Lcom/prineside/tdi2/BasicLevel;

.field public final D:Lcom/prineside/tdi2/screens/MapEditorScreen$_MapShiftButtonsListener;

.field public final E:Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;

.field public final F:Lcom/prineside/tdi2/screens/MapEditorScreen$_InventorySystemListener;

.field public final G:Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorInventoryMenuListener;

.field public final H:Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorTileInfoMenuListener;

.field public final I:Lcom/prineside/tdi2/screens/MapEditorScreen$_ProgressManagerListener;

.field public J:Lcom/prineside/tdi2/Gate;

.field public final K:Lcom/prineside/tdi2/screens/MapEditorScreen$_MapListener;

.field public S:Lcom/prineside/tdi2/GameSystemProvider;

.field public a:Lcom/badlogic/gdx/graphics/OrthographicCamera;

.field public b:Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;

.field public c:Lcom/prineside/tdi2/screens/MapEditorScreen$_DragInputProcessor;

.field public cameraController:Lcom/prineside/tdi2/CameraController;

.field public d:Lcom/prineside/tdi2/screens/MapEditorScreen$_RemoveInputProcessor;

.field public draggingItemHelper:Lcom/prineside/tdi2/ui/components/DraggingItemHelper;

.field public e:Lcom/prineside/tdi2/screens/MapEditorScreen$_InsertInputProcessor;

.field public f:Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawInsertInputProcessor;

.field public g:Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawRemoveInputProcessor;

.field public h:Lcom/prineside/tdi2/screens/MapEditorScreen$_ScrollFocusInputProcessor;

.field public i:Lcom/badlogic/gdx/InputMultiplexer;

.field public j:Lcom/prineside/tdi2/ui/actors/SideMenu;

.field public k:Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;

.field public l:Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;

.field public m:Z

.field public mainUi:Lcom/prineside/tdi2/ui/components/MapEditorUi;

.field public mapShiftButtons:Lcom/prineside/tdi2/ui/components/MapShiftButtons;

.field public n:I

.field public o:I

.field public p:Z

.field public q:I

.field public r:I

.field public s:Lcom/prineside/tdi2/Gate$Side;

.field public screenBorderGradient:Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient;

.field public selectedBarrier:Z

.field public selectedGateX:I

.field public selectedGateY:I

.field public selectedTile:Z

.field public selectedTileX:I

.field public selectedTileY:I

.field public t:Lcom/prineside/tdi2/Gate$Side;

.field public u:Lcom/prineside/tdi2/ItemStack;

.field public v:Lcom/badlogic/gdx/math/Vector2;

.field public w:Z

.field public x:I

.field public y:I

.field public z:Lcom/prineside/tdi2/Gate$Side;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectSet;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->L:Lcom/badlogic/gdx/utils/ObjectSet;

    sget-object v1, Lcom/prineside/tdi2/enums/TileType;->ROAD:Lcom/prineside/tdi2/enums/TileType;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->L:Lcom/badlogic/gdx/utils/ObjectSet;

    sget-object v1, Lcom/prineside/tdi2/enums/TileType;->SPAWN:Lcom/prineside/tdi2/enums/TileType;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->L:Lcom/badlogic/gdx/utils/ObjectSet;

    sget-object v1, Lcom/prineside/tdi2/enums/TileType;->TARGET:Lcom/prineside/tdi2/enums/TileType;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/BasicLevel;)V
    .locals 2

    invoke-direct {p0}, Lcom/prineside/tdi2/Screen;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->m:Z

    iput-boolean v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->selectedTile:Z

    iput-boolean v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->p:Z

    iput-boolean v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->selectedBarrier:Z

    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->v:Lcom/badlogic/gdx/math/Vector2;

    iput-boolean v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->w:Z

    new-instance v0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapShiftButtonsListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapShiftButtonsListener;-><init>(Lcom/prineside/tdi2/screens/MapEditorScreen;Lcom/prineside/tdi2/screens/MapEditorScreen$1;)V

    iput-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->D:Lcom/prineside/tdi2/screens/MapEditorScreen$_MapShiftButtonsListener;

    new-instance v0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;

    invoke-direct {v0, p0, v1}, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;-><init>(Lcom/prineside/tdi2/screens/MapEditorScreen;Lcom/prineside/tdi2/screens/MapEditorScreen$1;)V

    iput-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->E:Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;

    new-instance v0, Lcom/prineside/tdi2/screens/MapEditorScreen$_InventorySystemListener;

    invoke-direct {v0, p0, v1}, Lcom/prineside/tdi2/screens/MapEditorScreen$_InventorySystemListener;-><init>(Lcom/prineside/tdi2/screens/MapEditorScreen;Lcom/prineside/tdi2/screens/MapEditorScreen$1;)V

    iput-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->F:Lcom/prineside/tdi2/screens/MapEditorScreen$_InventorySystemListener;

    new-instance v0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorInventoryMenuListener;

    invoke-direct {v0, p0, v1}, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorInventoryMenuListener;-><init>(Lcom/prineside/tdi2/screens/MapEditorScreen;Lcom/prineside/tdi2/screens/MapEditorScreen$1;)V

    iput-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->G:Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorInventoryMenuListener;

    new-instance v0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorTileInfoMenuListener;

    invoke-direct {v0, p0, v1}, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorTileInfoMenuListener;-><init>(Lcom/prineside/tdi2/screens/MapEditorScreen;Lcom/prineside/tdi2/screens/MapEditorScreen$1;)V

    iput-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->H:Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorTileInfoMenuListener;

    new-instance v0, Lcom/prineside/tdi2/screens/MapEditorScreen$_ProgressManagerListener;

    invoke-direct {v0, p0, v1}, Lcom/prineside/tdi2/screens/MapEditorScreen$_ProgressManagerListener;-><init>(Lcom/prineside/tdi2/screens/MapEditorScreen;Lcom/prineside/tdi2/screens/MapEditorScreen$1;)V

    iput-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->I:Lcom/prineside/tdi2/screens/MapEditorScreen$_ProgressManagerListener;

    new-instance v0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapListener;

    invoke-direct {v0, p0, v1}, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapListener;-><init>(Lcom/prineside/tdi2/screens/MapEditorScreen;Lcom/prineside/tdi2/screens/MapEditorScreen$1;)V

    iput-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->K:Lcom/prineside/tdi2/screens/MapEditorScreen$_MapListener;

    iput-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->C:Lcom/prineside/tdi2/BasicLevel;

    invoke-virtual {p0}, Lcom/prineside/tdi2/screens/MapEditorScreen;->D()V

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/UserMap;)V
    .locals 2

    invoke-direct {p0}, Lcom/prineside/tdi2/Screen;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->m:Z

    iput-boolean v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->selectedTile:Z

    iput-boolean v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->p:Z

    iput-boolean v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->selectedBarrier:Z

    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->v:Lcom/badlogic/gdx/math/Vector2;

    iput-boolean v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->w:Z

    new-instance v0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapShiftButtonsListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapShiftButtonsListener;-><init>(Lcom/prineside/tdi2/screens/MapEditorScreen;Lcom/prineside/tdi2/screens/MapEditorScreen$1;)V

    iput-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->D:Lcom/prineside/tdi2/screens/MapEditorScreen$_MapShiftButtonsListener;

    new-instance v0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;

    invoke-direct {v0, p0, v1}, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;-><init>(Lcom/prineside/tdi2/screens/MapEditorScreen;Lcom/prineside/tdi2/screens/MapEditorScreen$1;)V

    iput-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->E:Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;

    new-instance v0, Lcom/prineside/tdi2/screens/MapEditorScreen$_InventorySystemListener;

    invoke-direct {v0, p0, v1}, Lcom/prineside/tdi2/screens/MapEditorScreen$_InventorySystemListener;-><init>(Lcom/prineside/tdi2/screens/MapEditorScreen;Lcom/prineside/tdi2/screens/MapEditorScreen$1;)V

    iput-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->F:Lcom/prineside/tdi2/screens/MapEditorScreen$_InventorySystemListener;

    new-instance v0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorInventoryMenuListener;

    invoke-direct {v0, p0, v1}, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorInventoryMenuListener;-><init>(Lcom/prineside/tdi2/screens/MapEditorScreen;Lcom/prineside/tdi2/screens/MapEditorScreen$1;)V

    iput-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->G:Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorInventoryMenuListener;

    new-instance v0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorTileInfoMenuListener;

    invoke-direct {v0, p0, v1}, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorTileInfoMenuListener;-><init>(Lcom/prineside/tdi2/screens/MapEditorScreen;Lcom/prineside/tdi2/screens/MapEditorScreen$1;)V

    iput-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->H:Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorTileInfoMenuListener;

    new-instance v0, Lcom/prineside/tdi2/screens/MapEditorScreen$_ProgressManagerListener;

    invoke-direct {v0, p0, v1}, Lcom/prineside/tdi2/screens/MapEditorScreen$_ProgressManagerListener;-><init>(Lcom/prineside/tdi2/screens/MapEditorScreen;Lcom/prineside/tdi2/screens/MapEditorScreen$1;)V

    iput-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->I:Lcom/prineside/tdi2/screens/MapEditorScreen$_ProgressManagerListener;

    new-instance v0, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapListener;

    invoke-direct {v0, p0, v1}, Lcom/prineside/tdi2/screens/MapEditorScreen$_MapListener;-><init>(Lcom/prineside/tdi2/screens/MapEditorScreen;Lcom/prineside/tdi2/screens/MapEditorScreen$1;)V

    iput-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->K:Lcom/prineside/tdi2/screens/MapEditorScreen$_MapListener;

    iput-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->B:Lcom/prineside/tdi2/UserMap;

    invoke-virtual {p0}, Lcom/prineside/tdi2/screens/MapEditorScreen;->D()V

    return-void
.end method

.method public static synthetic A(Lcom/prineside/tdi2/screens/MapEditorScreen;)F
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/screens/MapEditorScreen;->C()F

    move-result p0

    return p0
.end method

.method public static synthetic B(Lcom/prineside/tdi2/screens/MapEditorScreen;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/screens/MapEditorScreen;->E(Z)V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/badlogic/gdx/math/Vector2;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->v:Lcom/badlogic/gdx/math/Vector2;

    return-object p0
.end method

.method public static synthetic b(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/Gate;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->J:Lcom/prineside/tdi2/Gate;

    return-object p0
.end method

.method public static synthetic c(Lcom/prineside/tdi2/screens/MapEditorScreen;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->w:Z

    return p0
.end method

.method public static synthetic d(Lcom/prineside/tdi2/screens/MapEditorScreen;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->w:Z

    return p1
.end method

.method public static synthetic e(Lcom/prineside/tdi2/screens/MapEditorScreen;)I
    .locals 0

    iget p0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->x:I

    return p0
.end method

.method public static synthetic f(Lcom/prineside/tdi2/screens/MapEditorScreen;I)I
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->x:I

    return p1
.end method

.method public static synthetic g(Lcom/prineside/tdi2/screens/MapEditorScreen;)I
    .locals 0

    iget p0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->y:I

    return p0
.end method

.method public static synthetic h(Lcom/prineside/tdi2/screens/MapEditorScreen;I)I
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->y:I

    return p1
.end method

.method public static synthetic i(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/Gate$Side;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->z:Lcom/prineside/tdi2/Gate$Side;

    return-object p0
.end method

.method public static synthetic j(Lcom/prineside/tdi2/screens/MapEditorScreen;Lcom/prineside/tdi2/Gate$Side;)Lcom/prineside/tdi2/Gate$Side;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->z:Lcom/prineside/tdi2/Gate$Side;

    return-object p1
.end method

.method public static synthetic k(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->b:Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;

    return-object p0
.end method

.method public static synthetic l(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/ItemStack;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->u:Lcom/prineside/tdi2/ItemStack;

    return-object p0
.end method

.method public static synthetic m(Lcom/prineside/tdi2/screens/MapEditorScreen;Lcom/prineside/tdi2/ItemStack;)Lcom/prineside/tdi2/ItemStack;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->u:Lcom/prineside/tdi2/ItemStack;

    return-object p1
.end method

.method public static synthetic n(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->k:Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;

    return-object p0
.end method

.method public static synthetic o(Lcom/prineside/tdi2/screens/MapEditorScreen;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->p:Z

    return p1
.end method

.method public static synthetic p(Lcom/prineside/tdi2/screens/MapEditorScreen;I)I
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->q:I

    return p1
.end method

.method public static synthetic q(Lcom/prineside/tdi2/screens/MapEditorScreen;I)I
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->r:I

    return p1
.end method

.method public static synthetic r(Lcom/prineside/tdi2/screens/MapEditorScreen;Lcom/prineside/tdi2/Gate$Side;)Lcom/prineside/tdi2/Gate$Side;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->s:Lcom/prineside/tdi2/Gate$Side;

    return-object p1
.end method

.method public static synthetic s(Lcom/prineside/tdi2/screens/MapEditorScreen;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->m:Z

    return p1
.end method

.method public static synthetic t(Lcom/prineside/tdi2/screens/MapEditorScreen;)I
    .locals 0

    iget p0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->n:I

    return p0
.end method

.method public static synthetic u(Lcom/prineside/tdi2/screens/MapEditorScreen;I)I
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->n:I

    return p1
.end method

.method public static synthetic v(Lcom/prineside/tdi2/screens/MapEditorScreen;)I
    .locals 0

    iget p0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->o:I

    return p0
.end method

.method public static synthetic w(Lcom/prineside/tdi2/screens/MapEditorScreen;I)I
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->o:I

    return p1
.end method

.method public static synthetic x(Lcom/prineside/tdi2/screens/MapEditorScreen;)Lcom/prineside/tdi2/Gate$Side;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->t:Lcom/prineside/tdi2/Gate$Side;

    return-object p0
.end method

.method public static synthetic y(Lcom/prineside/tdi2/screens/MapEditorScreen;Lcom/prineside/tdi2/Gate$Side;)Lcom/prineside/tdi2/Gate$Side;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->t:Lcom/prineside/tdi2/Gate$Side;

    return-object p1
.end method

.method public static synthetic z(Lcom/prineside/tdi2/screens/MapEditorScreen;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/screens/MapEditorScreen;->G()V

    return-void
.end method


# virtual methods
.method public final C()F
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->cameraController:Lcom/prineside/tdi2/CameraController;

    iget-wide v0, v0, Lcom/prineside/tdi2/CameraController;->zoom:D

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result v0

    int-to-float v0, v0

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    mul-float v1, v1, v0

    return v1
.end method

.method public final D()V
    .locals 12

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager;->hideAllComponents()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->musicManager:Lcom/prineside/tdi2/managers/MusicManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/MusicManager;->continuePlayingMenuMusicTrack()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->gateManager:Lcom/prineside/tdi2/managers/GateManager;

    sget-object v1, Lcom/prineside/tdi2/enums/GateType;->values:[Lcom/prineside/tdi2/enums/GateType;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/GateManager;->getFactory(Lcom/prineside/tdi2/enums/GateType;)Lcom/prineside/tdi2/Gate$Factory;

    move-result-object v0

    invoke-interface {v0}, Lcom/prineside/tdi2/Gate$Factory;->create()Lcom/prineside/tdi2/Gate;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->J:Lcom/prineside/tdi2/Gate;

    new-instance v0, Lcom/prineside/tdi2/GameSystemProvider;

    new-instance v1, Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig;

    sget-object v3, Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig$Setup;->MAP_EDITOR:Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig$Setup;

    invoke-direct {v1, v3, v2}, Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig;-><init>(Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig$Setup;Z)V

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/GameSystemProvider;-><init>(Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig;)V

    iput-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {v0}, Lcom/prineside/tdi2/GameSystemProvider;->createSystems()V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {v0}, Lcom/prineside/tdi2/GameSystemProvider;->setupSystems()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->scriptManager:Lcom/prineside/tdi2/managers/ScriptManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/ScriptManager;->global:Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->getGlobals()Lcom/prineside/luaj/Globals;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-static {v1}, Lcom/prineside/luaj/lib/jse/CoerceJavaToLua;->coerce(Ljava/lang/Object;)Lcom/prineside/luaj/LuaValue;

    move-result-object v1

    const-string v3, "SP"

    invoke-virtual {v0, v3, v1}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->B:Lcom/prineside/tdi2/UserMap;

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_8

    iget-object v4, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v5, v4, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    iput-boolean v2, v5, Lcom/prineside/tdi2/systems/MapEditorSystem;->basicLevelEditor:Z

    iput-object v0, v5, Lcom/prineside/tdi2/systems/MapEditorSystem;->userMap:Lcom/prineside/tdi2/UserMap;

    iget-object v0, v4, Lcom/prineside/tdi2/GameSystemProvider;->_inventory:Lcom/prineside/tdi2/systems/InventorySystem;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v4}, Lcom/prineside/tdi2/managers/ProgressManager;->getAllItems()Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/prineside/tdi2/systems/InventorySystem;->setItems(Lcom/badlogic/gdx/utils/Array;)V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->B:Lcom/prineside/tdi2/UserMap;

    iget-object v0, v0, Lcom/prineside/tdi2/UserMap;->map:Lcom/prineside/tdi2/Map;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Map;->cpy()Lcom/prineside/tdi2/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->A:Lcom/prineside/tdi2/Map;

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->A:Lcom/prineside/tdi2/Map;

    iget v4, v4, Lcom/prineside/tdi2/Map;->heightTiles:I

    if-ge v0, v4, :cond_2

    const/4 v4, 0x0

    :goto_1
    iget-object v5, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->A:Lcom/prineside/tdi2/Map;

    iget v6, v5, Lcom/prineside/tdi2/Map;->widthTiles:I

    if-ge v4, v6, :cond_1

    iget-object v5, v5, Lcom/prineside/tdi2/Map;->tiles:[[Lcom/prineside/tdi2/Tile;

    aget-object v5, v5, v0

    aget-object v5, v5, v4

    if-eqz v5, :cond_0

    iget-object v6, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v6, v6, Lcom/prineside/tdi2/GameSystemProvider;->_inventory:Lcom/prineside/tdi2/systems/InventorySystem;

    sget-object v7, Lcom/prineside/tdi2/Item$D;->F_TILE:Lcom/prineside/tdi2/items/TileItem$TileItemFactory;

    invoke-virtual {v7, v5}, Lcom/prineside/tdi2/items/TileItem$TileItemFactory;->create(Lcom/prineside/tdi2/Tile;)Lcom/prineside/tdi2/items/TileItem;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/prineside/tdi2/systems/InventorySystem;->remove(Lcom/prineside/tdi2/Item;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->A:Lcom/prineside/tdi2/Map;

    invoke-virtual {v5, v4, v0, v1}, Lcom/prineside/tdi2/Map;->setTile(IILcom/prineside/tdi2/Tile;)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iget-object v4, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->A:Lcom/prineside/tdi2/Map;

    iget v4, v4, Lcom/prineside/tdi2/Map;->heightTiles:I

    if-gt v0, v4, :cond_6

    const/4 v4, 0x0

    :goto_3
    iget-object v5, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->A:Lcom/prineside/tdi2/Map;

    iget v5, v5, Lcom/prineside/tdi2/Map;->widthTiles:I

    if-gt v4, v5, :cond_5

    sget-object v5, Lcom/prineside/tdi2/Gate$Side;->values:[Lcom/prineside/tdi2/Gate$Side;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v6, :cond_4

    aget-object v8, v5, v7

    iget-object v9, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->A:Lcom/prineside/tdi2/Map;

    invoke-virtual {v9, v4, v0, v8}, Lcom/prineside/tdi2/Map;->getGate(IILcom/prineside/tdi2/Gate$Side;)Lcom/prineside/tdi2/Gate;

    move-result-object v9

    if-eqz v9, :cond_3

    iget-object v10, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v10, v10, Lcom/prineside/tdi2/GameSystemProvider;->_inventory:Lcom/prineside/tdi2/systems/InventorySystem;

    sget-object v11, Lcom/prineside/tdi2/Item$D;->F_GATE:Lcom/prineside/tdi2/items/GateItem$GateItemFactory;

    invoke-virtual {v11, v9}, Lcom/prineside/tdi2/items/GateItem$GateItemFactory;->create(Lcom/prineside/tdi2/Gate;)Lcom/prineside/tdi2/items/GateItem;

    move-result-object v9

    invoke-virtual {v10, v9}, Lcom/prineside/tdi2/systems/InventorySystem;->remove(Lcom/prineside/tdi2/Item;)Z

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->A:Lcom/prineside/tdi2/Map;

    invoke-virtual {v9, v4, v0, v8, v1}, Lcom/prineside/tdi2/Map;->setGate(IILcom/prineside/tdi2/Gate$Side;Lcom/prineside/tdi2/Gate;)V

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/GameValueManager;->getSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v0

    sget-object v4, Lcom/prineside/tdi2/enums/GameValueType;->USER_MAP_MAX_SIZE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v4}, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result v0

    iget-object v4, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->A:Lcom/prineside/tdi2/Map;

    iget v5, v4, Lcom/prineside/tdi2/Map;->widthTiles:I

    if-lt v5, v0, :cond_7

    iget v5, v4, Lcom/prineside/tdi2/Map;->heightTiles:I

    if-ge v5, v0, :cond_9

    :cond_7
    invoke-virtual {v4}, Lcom/prineside/tdi2/Map;->cpy()Lcom/prineside/tdi2/Map;

    move-result-object v4

    iput-object v4, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->A:Lcom/prineside/tdi2/Map;

    invoke-virtual {v4, v0, v0}, Lcom/prineside/tdi2/Map;->setSize(II)V

    goto :goto_5

    :cond_8
    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v0, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    iput-boolean v3, v4, Lcom/prineside/tdi2/systems/MapEditorSystem;->basicLevelEditor:Z

    iget-object v5, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->C:Lcom/prineside/tdi2/BasicLevel;

    iput-object v5, v4, Lcom/prineside/tdi2/systems/MapEditorSystem;->basicLevel:Lcom/prineside/tdi2/BasicLevel;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_inventory:Lcom/prineside/tdi2/systems/InventorySystem;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v4}, Lcom/prineside/tdi2/managers/ProgressManager;->getAllItems()Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/prineside/tdi2/systems/InventorySystem;->setItems(Lcom/badlogic/gdx/utils/Array;)V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->C:Lcom/prineside/tdi2/BasicLevel;

    invoke-virtual {v0}, Lcom/prineside/tdi2/BasicLevel;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Map;->cpy()Lcom/prineside/tdi2/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->A:Lcom/prineside/tdi2/Map;

    :cond_9
    :goto_5
    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/MapEditorSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    iget-object v4, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->E:Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorSystemListener;

    invoke-virtual {v0, v4}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_inventory:Lcom/prineside/tdi2/systems/InventorySystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/InventorySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    iget-object v4, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->F:Lcom/prineside/tdi2/screens/MapEditorScreen$_InventorySystemListener;

    invoke-virtual {v0, v4}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget-object v4, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->I:Lcom/prineside/tdi2/screens/MapEditorScreen$_ProgressManagerListener;

    invoke-virtual {v0, v4}, Lcom/prineside/tdi2/managers/ProgressManager;->addListener(Lcom/prineside/tdi2/managers/ProgressManager$ProgressManagerListener;)V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->A:Lcom/prineside/tdi2/Map;

    iput-boolean v2, v0, Lcom/prineside/tdi2/Map;->throwExceptionOnMissingPath:Z

    iget-object v2, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v2, v0}, Lcom/prineside/tdi2/systems/MapSystem;->setMap(Lcom/prineside/tdi2/Map;)V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->A:Lcom/prineside/tdi2/Map;

    iget-object v0, v0, Lcom/prineside/tdi2/Map;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    iget-object v2, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->K:Lcom/prineside/tdi2/screens/MapEditorScreen$_MapListener;

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iput-boolean v3, v2, Lcom/prineside/tdi2/systems/MapSystem;->drawPathTraces:Z

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_mapRendering:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    iput-boolean v3, v0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->drawMapGrid:Z

    sget-object v2, Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;->MAP_EDITOR:Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->setDrawMode(Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/screens/MapEditorScreen;->updateEnemyPathTraces()V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {v0}, Lcom/prineside/tdi2/GameSystemProvider;->postSetupSystems()V

    new-instance v0, Lcom/badlogic/gdx/graphics/OrthographicCamera;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget-object v4, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v4}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v2, v4}, Lcom/badlogic/gdx/graphics/OrthographicCamera;-><init>(FF)V

    iput-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->a:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    new-instance v0, Lcom/prineside/tdi2/CameraController;

    iget-object v2, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->a:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v4, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v4}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v4

    iget v4, v4, Lcom/prineside/tdi2/Map;->widthPixels:I

    iget-object v5, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v5, v5, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v5}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v5

    iget v5, v5, Lcom/prineside/tdi2/Map;->heightPixels:I

    invoke-direct {v0, v2, v4, v5}, Lcom/prineside/tdi2/CameraController;-><init>(Lcom/badlogic/gdx/graphics/OrthographicCamera;II)V

    iput-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->cameraController:Lcom/prineside/tdi2/CameraController;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v2

    sget-object v4, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v4}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v4

    invoke-virtual {v0, v2, v4}, Lcom/prineside/tdi2/CameraController;->setScreenSize(II)V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->cameraController:Lcom/prineside/tdi2/CameraController;

    iget-object v2, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v2}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v2

    iget v2, v2, Lcom/prineside/tdi2/Map;->widthPixels:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v4, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v4}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v4

    iget v4, v4, Lcom/prineside/tdi2/Map;->heightPixels:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v0, v2, v4}, Lcom/prineside/tdi2/CameraController;->lookAt(FF)V

    new-instance v0, Lcom/prineside/tdi2/ui/components/MapShiftButtons;

    iget-object v2, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->cameraController:Lcom/prineside/tdi2/CameraController;

    invoke-direct {v0, v2}, Lcom/prineside/tdi2/ui/components/MapShiftButtons;-><init>(Lcom/prineside/tdi2/CameraController;)V

    iput-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->mapShiftButtons:Lcom/prineside/tdi2/ui/components/MapShiftButtons;

    iget-object v2, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    iget-boolean v2, v2, Lcom/prineside/tdi2/systems/MapEditorSystem;->basicLevelEditor:Z

    if-eqz v2, :cond_a

    invoke-virtual {v0, v3}, Lcom/prineside/tdi2/ui/components/MapShiftButtons;->setMapSizeChangesAllowed(Z)V

    :cond_a
    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->mapShiftButtons:Lcom/prineside/tdi2/ui/components/MapShiftButtons;

    iget-object v2, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->D:Lcom/prineside/tdi2/screens/MapEditorScreen$_MapShiftButtonsListener;

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/ui/components/MapShiftButtons;->addListener(Lcom/prineside/tdi2/ui/components/MapShiftButtons$MapShiftButtonsListener;)V

    new-instance v0, Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient;

    invoke-direct {v0}, Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->screenBorderGradient:Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient;

    new-instance v0, Lcom/prineside/tdi2/ui/components/MapEditorUi;

    iget-object v2, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-direct {v0, v2}, Lcom/prineside/tdi2/ui/components/MapEditorUi;-><init>(Lcom/prineside/tdi2/GameSystemProvider;)V

    iput-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->mainUi:Lcom/prineside/tdi2/ui/components/MapEditorUi;

    new-instance v0, Lcom/prineside/tdi2/ui/actors/SideMenu;

    invoke-direct {v0}, Lcom/prineside/tdi2/ui/actors/SideMenu;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->j:Lcom/prineside/tdi2/ui/actors/SideMenu;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/actors/SideMenu;->addOffscreenBackground()V

    new-instance v0, Lcom/prineside/tdi2/ui/components/DraggingItemHelper;

    invoke-direct {v0}, Lcom/prineside/tdi2/ui/components/DraggingItemHelper;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->draggingItemHelper:Lcom/prineside/tdi2/ui/components/DraggingItemHelper;

    new-instance v0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;-><init>(Lcom/prineside/tdi2/screens/MapEditorScreen;)V

    iput-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->l:Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;

    iget-object v2, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->H:Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorTileInfoMenuListener;

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->addListener(Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$MapEditorTileInfoMenuListener;)V

    new-instance v0, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;

    iget-object v2, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->j:Lcom/prineside/tdi2/ui/actors/SideMenu;

    iget-object v3, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->cameraController:Lcom/prineside/tdi2/CameraController;

    iget-object v4, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-direct {v0, v2, v3, v4}, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;-><init>(Lcom/prineside/tdi2/ui/actors/SideMenu;Lcom/prineside/tdi2/CameraController;Lcom/prineside/tdi2/GameSystemProvider;)V

    iput-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->k:Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;

    iget-object v2, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->G:Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorInventoryMenuListener;

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->addListener(Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$MapEditorInventoryMenuListener;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/screens/MapEditorScreen;->updateSelectedItemMenu()V

    new-instance v0, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;

    invoke-direct {v0, p0, v1}, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;-><init>(Lcom/prineside/tdi2/screens/MapEditorScreen;Lcom/prineside/tdi2/screens/MapEditorScreen$1;)V

    iput-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->b:Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;

    new-instance v0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DragInputProcessor;

    invoke-direct {v0, p0, v1}, Lcom/prineside/tdi2/screens/MapEditorScreen$_DragInputProcessor;-><init>(Lcom/prineside/tdi2/screens/MapEditorScreen;Lcom/prineside/tdi2/screens/MapEditorScreen$1;)V

    iput-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->c:Lcom/prineside/tdi2/screens/MapEditorScreen$_DragInputProcessor;

    new-instance v0, Lcom/prineside/tdi2/screens/MapEditorScreen$_RemoveInputProcessor;

    invoke-direct {v0, p0, v1}, Lcom/prineside/tdi2/screens/MapEditorScreen$_RemoveInputProcessor;-><init>(Lcom/prineside/tdi2/screens/MapEditorScreen;Lcom/prineside/tdi2/screens/MapEditorScreen$1;)V

    iput-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->d:Lcom/prineside/tdi2/screens/MapEditorScreen$_RemoveInputProcessor;

    new-instance v0, Lcom/prineside/tdi2/screens/MapEditorScreen$_InsertInputProcessor;

    invoke-direct {v0, p0, v1}, Lcom/prineside/tdi2/screens/MapEditorScreen$_InsertInputProcessor;-><init>(Lcom/prineside/tdi2/screens/MapEditorScreen;Lcom/prineside/tdi2/screens/MapEditorScreen$1;)V

    iput-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->e:Lcom/prineside/tdi2/screens/MapEditorScreen$_InsertInputProcessor;

    new-instance v0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawInsertInputProcessor;

    invoke-direct {v0, p0, v1}, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawInsertInputProcessor;-><init>(Lcom/prineside/tdi2/screens/MapEditorScreen;Lcom/prineside/tdi2/screens/MapEditorScreen$1;)V

    iput-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->f:Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawInsertInputProcessor;

    new-instance v0, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawRemoveInputProcessor;

    invoke-direct {v0, p0, v1}, Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawRemoveInputProcessor;-><init>(Lcom/prineside/tdi2/screens/MapEditorScreen;Lcom/prineside/tdi2/screens/MapEditorScreen$1;)V

    iput-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->g:Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawRemoveInputProcessor;

    new-instance v0, Lcom/prineside/tdi2/screens/MapEditorScreen$_ScrollFocusInputProcessor;

    invoke-direct {v0, p0, v1}, Lcom/prineside/tdi2/screens/MapEditorScreen$_ScrollFocusInputProcessor;-><init>(Lcom/prineside/tdi2/screens/MapEditorScreen;Lcom/prineside/tdi2/screens/MapEditorScreen$1;)V

    iput-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->h:Lcom/prineside/tdi2/screens/MapEditorScreen$_ScrollFocusInputProcessor;

    new-instance v0, Lcom/badlogic/gdx/InputMultiplexer;

    invoke-direct {v0}, Lcom/badlogic/gdx/InputMultiplexer;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->i:Lcom/badlogic/gdx/InputMultiplexer;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/Input;->setInputProcessor(Lcom/badlogic/gdx/InputProcessor;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/screens/MapEditorScreen;->G()V

    return-void
.end method

.method public final E(Z)V
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->u:Lcom/prineside/tdi2/ItemStack;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->u:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v1

    :cond_0
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {p1, v0, v1}, Lcom/prineside/tdi2/managers/ProgressManager;->sellItems(Lcom/prineside/tdi2/Item;I)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_inventory:Lcom/prineside/tdi2/systems/InventorySystem;

    invoke-virtual {p1, v0, v1}, Lcom/prineside/tdi2/systems/InventorySystem;->remove(Lcom/prineside/tdi2/Item;I)Z

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->selectedTile:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object p1

    iget v2, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->selectedTileX:I

    iget v3, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->selectedTileY:I

    invoke-virtual {p1, v2, v3}, Lcom/prineside/tdi2/Map;->getTile(II)Lcom/prineside/tdi2/Tile;

    move-result-object p1

    if-eqz p1, :cond_3

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    sget-object v3, Lcom/prineside/tdi2/Item$D;->F_TILE:Lcom/prineside/tdi2/items/TileItem$TileItemFactory;

    invoke-virtual {v3, p1}, Lcom/prineside/tdi2/items/TileItem$TileItemFactory;->create(Lcom/prineside/tdi2/Tile;)Lcom/prineside/tdi2/items/TileItem;

    move-result-object p1

    invoke-virtual {v2, p1, v1}, Lcom/prineside/tdi2/managers/ProgressManager;->sellItems(Lcom/prineside/tdi2/Item;I)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    iget v1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->selectedTileX:I

    iget v2, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->selectedTileY:I

    invoke-virtual {p1, v1, v2, v0}, Lcom/prineside/tdi2/systems/MapEditorSystem;->setMapTile(IILcom/prineside/tdi2/Tile;)V

    goto :goto_0

    :cond_2
    iget-boolean p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->selectedBarrier:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object p1

    iget v2, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->selectedGateX:I

    iget v3, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->selectedGateY:I

    iget-object v4, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->t:Lcom/prineside/tdi2/Gate$Side;

    invoke-virtual {p1, v2, v3, v4}, Lcom/prineside/tdi2/Map;->getGate(IILcom/prineside/tdi2/Gate$Side;)Lcom/prineside/tdi2/Gate;

    move-result-object p1

    if-eqz p1, :cond_3

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    sget-object v3, Lcom/prineside/tdi2/Item$D;->F_GATE:Lcom/prineside/tdi2/items/GateItem$GateItemFactory;

    invoke-virtual {v3, p1}, Lcom/prineside/tdi2/items/GateItem$GateItemFactory;->create(Lcom/prineside/tdi2/Gate;)Lcom/prineside/tdi2/items/GateItem;

    move-result-object p1

    invoke-virtual {v2, p1, v1}, Lcom/prineside/tdi2/managers/ProgressManager;->sellItems(Lcom/prineside/tdi2/Item;I)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    iget v1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->selectedGateX:I

    iget v2, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->selectedGateY:I

    iget-object v3, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->t:Lcom/prineside/tdi2/Gate$Side;

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/prineside/tdi2/systems/MapEditorSystem;->setMapGate(IILcom/prineside/tdi2/Gate$Side;Lcom/prineside/tdi2/Gate;)V

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/screens/MapEditorScreen;->updateSelectedItemMenu()V

    return-void
.end method

.method public final F()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {v0}, Lcom/prineside/tdi2/GameSystemProvider;->updateSystems()V

    return-void
.end method

.method public final G()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->i:Lcom/badlogic/gdx/InputMultiplexer;

    invoke-virtual {v0}, Lcom/badlogic/gdx/InputMultiplexer;->clear()V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->i:Lcom/badlogic/gdx/InputMultiplexer;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/InputMultiplexer;->addProcessor(Lcom/badlogic/gdx/InputProcessor;)V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->i:Lcom/badlogic/gdx/InputMultiplexer;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->h:Lcom/prineside/tdi2/screens/MapEditorScreen$_ScrollFocusInputProcessor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/InputMultiplexer;->addProcessor(Lcom/badlogic/gdx/InputProcessor;)V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapEditorSystem;->getMode()Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;->DRAG:Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->i:Lcom/badlogic/gdx/InputMultiplexer;

    iget-object v2, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->c:Lcom/prineside/tdi2/screens/MapEditorScreen$_DragInputProcessor;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/InputMultiplexer;->addProcessor(Lcom/badlogic/gdx/InputProcessor;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapEditorSystem;->getMode()Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;

    move-result-object v0

    sget-object v2, Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;->DRAW_INSERT:Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapEditorSystem;->getMode()Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;

    move-result-object v0

    sget-object v2, Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;->DRAW_REMOVE:Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->i:Lcom/badlogic/gdx/InputMultiplexer;

    iget-object v2, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->cameraController:Lcom/prineside/tdi2/CameraController;

    invoke-virtual {v2}, Lcom/prineside/tdi2/CameraController;->getInputProcessor()Lcom/badlogic/gdx/InputProcessor;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/InputMultiplexer;->addProcessor(Lcom/badlogic/gdx/InputProcessor;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->i:Lcom/badlogic/gdx/InputMultiplexer;

    iget-object v2, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->b:Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/InputMultiplexer;->addProcessor(Lcom/badlogic/gdx/InputProcessor;)V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapEditorSystem;->getMode()Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;

    move-result-object v0

    const/4 v2, 0x0

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapEditorSystem;->getMode()Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;->VIEW:Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;

    if-ne v0, v1, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapEditorSystem;->getMode()Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;->REMOVE:Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->i:Lcom/badlogic/gdx/InputMultiplexer;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->d:Lcom/prineside/tdi2/screens/MapEditorScreen$_RemoveInputProcessor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/InputMultiplexer;->addProcessor(Lcom/badlogic/gdx/InputProcessor;)V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->b:Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;

    iput-boolean v2, v0, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->selectTiles:Z

    iput-boolean v2, v0, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->selectBarriers:Z

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapEditorSystem;->getMode()Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;->INSERT:Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->i:Lcom/badlogic/gdx/InputMultiplexer;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->e:Lcom/prineside/tdi2/screens/MapEditorScreen$_InsertInputProcessor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/InputMultiplexer;->addProcessor(Lcom/badlogic/gdx/InputProcessor;)V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->b:Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;

    iput-boolean v2, v0, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->selectTiles:Z

    iput-boolean v2, v0, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->selectBarriers:Z

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapEditorSystem;->getMode()Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;->DRAW_INSERT:Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->i:Lcom/badlogic/gdx/InputMultiplexer;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->f:Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawInsertInputProcessor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/InputMultiplexer;->addProcessor(Lcom/badlogic/gdx/InputProcessor;)V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->b:Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;

    iput-boolean v2, v0, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->selectTiles:Z

    iput-boolean v2, v0, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->selectBarriers:Z

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapEditorSystem;->getMode()Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;->DRAW_REMOVE:Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->i:Lcom/badlogic/gdx/InputMultiplexer;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->g:Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawRemoveInputProcessor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/InputMultiplexer;->addProcessor(Lcom/badlogic/gdx/InputProcessor;)V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->b:Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;

    iput-boolean v2, v0, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->selectTiles:Z

    iput-boolean v2, v0, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->selectBarriers:Z

    goto :goto_2

    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->b:Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->selectTiles:Z

    iput-boolean v1, v0, Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;->selectBarriers:Z

    :cond_8
    :goto_2
    iput-boolean v2, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->selectedTile:Z

    iput-boolean v2, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->m:Z

    iput-boolean v2, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->selectedBarrier:Z

    iput-boolean v2, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->p:Z

    invoke-virtual {p0}, Lcom/prineside/tdi2/screens/MapEditorScreen;->updateSelectedItemMenu()V

    return-void
.end method

.method public dispose()V
    .locals 3

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->I:Lcom/prineside/tdi2/screens/MapEditorScreen$_ProgressManagerListener;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ProgressManager;->removeListener(Lcom/prineside/tdi2/managers/ProgressManager$ProgressManagerListener;)V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->k:Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->G:Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorInventoryMenuListener;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->removeListener(Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu$MapEditorInventoryMenuListener;)V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->l:Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->H:Lcom/prineside/tdi2/screens/MapEditorScreen$_MapEditorTileInfoMenuListener;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->removeListener(Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$MapEditorTileInfoMenuListener;)V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->A:Lcom/prineside/tdi2/Map;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/prineside/tdi2/Map;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->K:Lcom/prineside/tdi2/screens/MapEditorScreen$_MapListener;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ListenerGroup;->remove(Lcom/prineside/tdi2/GameListener;)Z

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->draggingItemHelper:Lcom/prineside/tdi2/ui/components/DraggingItemHelper;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/components/DraggingItemHelper;->dispose()V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->mainUi:Lcom/prineside/tdi2/ui/components/MapEditorUi;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/components/MapEditorUi;->dispose()V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->mapShiftButtons:Lcom/prineside/tdi2/ui/components/MapShiftButtons;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/components/MapShiftButtons;->dispose()V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->screenBorderGradient:Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient;->dispose()V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->l:Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->dispose()V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->j:Lcom/prineside/tdi2/ui/actors/SideMenu;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/actors/SideMenu;->dispose()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->scriptManager:Lcom/prineside/tdi2/managers/ScriptManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/ScriptManager;->global:Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->getGlobals()Lcom/prineside/luaj/Globals;

    move-result-object v0

    sget-object v1, Lcom/prineside/luaj/LuaValue;->NIL:Lcom/prineside/luaj/LuaValue;

    const-string v2, "SP"

    invoke-virtual {v0, v2, v1}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iput-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->a:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iput-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->cameraController:Lcom/prineside/tdi2/CameraController;

    iput-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->b:Lcom/prineside/tdi2/screens/MapEditorScreen$_HoverSelectInputProcessor;

    iput-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->c:Lcom/prineside/tdi2/screens/MapEditorScreen$_DragInputProcessor;

    iput-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->d:Lcom/prineside/tdi2/screens/MapEditorScreen$_RemoveInputProcessor;

    iput-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->e:Lcom/prineside/tdi2/screens/MapEditorScreen$_InsertInputProcessor;

    iput-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->f:Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawInsertInputProcessor;

    iput-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->g:Lcom/prineside/tdi2/screens/MapEditorScreen$_DrawRemoveInputProcessor;

    iput-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->h:Lcom/prineside/tdi2/screens/MapEditorScreen$_ScrollFocusInputProcessor;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->i:Lcom/badlogic/gdx/InputMultiplexer;

    invoke-virtual {v1}, Lcom/badlogic/gdx/InputMultiplexer;->clear()V

    iput-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->i:Lcom/badlogic/gdx/InputMultiplexer;

    iput-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->screenBorderGradient:Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient;

    iput-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->mainUi:Lcom/prineside/tdi2/ui/components/MapEditorUi;

    iput-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->mapShiftButtons:Lcom/prineside/tdi2/ui/components/MapShiftButtons;

    iput-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->draggingItemHelper:Lcom/prineside/tdi2/ui/components/DraggingItemHelper;

    iput-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->j:Lcom/prineside/tdi2/ui/actors/SideMenu;

    iput-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->k:Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;

    iput-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->l:Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;

    iput-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->u:Lcom/prineside/tdi2/ItemStack;

    iput-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->B:Lcom/prineside/tdi2/UserMap;

    iput-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->C:Lcom/prineside/tdi2/BasicLevel;

    return-void
.end method

.method public draw(F)V
    .locals 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v3, "game_background"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    sget-object v3, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget v4, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v5, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v6, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v3, v4, v5, v6, v2}, Lcom/badlogic/gdx/graphics/GL20;->glClearColor(FFFF)V

    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v3, 0x4100

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glClear(I)V

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/SettingsManager;->isEscButtonJustPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    iget-boolean v3, v2, Lcom/prineside/tdi2/systems/MapEditorSystem;->mapChanged:Z

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/prineside/tdi2/systems/MapEditorSystem;->goToPreviousScreen()V

    return-void

    :cond_0
    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/UiManager;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getKeyboardFocus()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v2

    if-nez v2, :cond_6

    sget-object v2, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v3, 0x8

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Input;->isKeyJustPressed(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    sget-object v3, Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;->VIEW:Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/systems/MapEditorSystem;->setMode(Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;)V

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v3, 0x9

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Input;->isKeyJustPressed(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    sget-object v3, Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;->DRAG:Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/systems/MapEditorSystem;->setMode(Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;)V

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v3, 0xa

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Input;->isKeyJustPressed(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    sget-object v3, Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;->INSERT:Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/systems/MapEditorSystem;->setMode(Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;)V

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v3, 0xb

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Input;->isKeyJustPressed(I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    sget-object v3, Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;->REMOVE:Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/systems/MapEditorSystem;->setMode(Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;)V

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v3, 0x21

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Input;->isKeyJustPressed(I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    sget-object v3, Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;->DRAW_INSERT:Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/systems/MapEditorSystem;->setMode(Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;)V

    goto :goto_0

    :cond_5
    sget-object v2, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v3, 0x2e

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Input;->isKeyJustPressed(I)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->_mapEditor:Lcom/prineside/tdi2/systems/MapEditorSystem;

    sget-object v3, Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;->DRAW_REMOVE:Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/systems/MapEditorSystem;->setMode(Lcom/prineside/tdi2/systems/MapEditorSystem$Mode;)V

    :cond_6
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/screens/MapEditorScreen;->F()V

    iget-object v2, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->cameraController:Lcom/prineside/tdi2/CameraController;

    invoke-virtual {v2, v1}, Lcom/prineside/tdi2/CameraController;->realUpdate(F)V

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->renderingManager:Lcom/prineside/tdi2/managers/RenderingManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/RenderingManager;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    iget-object v3, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->a:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/Camera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v3

    iget-object v5, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v5, v5, Lcom/prineside/tdi2/GameSystemProvider;->_mapRendering:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    iget-object v6, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->a:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->drawTiles(Lcom/badlogic/gdx/graphics/OrthographicCamera;)V

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v6

    sub-long/2addr v6, v3

    const-string v3, "MapRendering-drawTiles"

    invoke-virtual {v5, v3, v6, v7}, Lcom/prineside/tdi2/managers/DebugManager;->registerFrameJob(Ljava/lang/String;J)V

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v3

    iget-object v5, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v5, v5, Lcom/prineside/tdi2/GameSystemProvider;->_mapRendering:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    iget-object v6, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->a:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->drawTilesExtras(Lcom/badlogic/gdx/graphics/OrthographicCamera;)V

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v6

    sub-long/2addr v6, v3

    const-string v3, "MapRendering-drawTilesExtras"

    invoke-virtual {v5, v3, v6, v7}, Lcom/prineside/tdi2/managers/DebugManager;->registerFrameJob(Ljava/lang/String;J)V

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v3

    iget-object v5, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v5, v5, Lcom/prineside/tdi2/GameSystemProvider;->_mapRendering:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    invoke-virtual {v5, v2, v1}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v6

    sub-long/2addr v6, v3

    const-string v3, "MapRendering-drawBatch"

    invoke-virtual {v5, v3, v6, v7}, Lcom/prineside/tdi2/managers/DebugManager;->registerFrameJob(Ljava/lang/String;J)V

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v11

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v4, 0x15

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v13

    iget-object v3, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v3}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v14

    const/4 v10, 0x0

    :goto_1
    iget v3, v14, Lcom/prineside/tdi2/Map;->heightTiles:I

    if-ge v10, v3, :cond_f

    const/4 v9, 0x0

    :goto_2
    iget v3, v14, Lcom/prineside/tdi2/Map;->widthTiles:I

    if-ge v9, v3, :cond_e

    invoke-virtual {v14, v9, v10}, Lcom/prineside/tdi2/Map;->getTile(II)Lcom/prineside/tdi2/Tile;

    move-result-object v3

    instance-of v4, v3, Lcom/prineside/tdi2/tiles/PlatformTile;

    const-string v8, "U"

    const/high16 v16, 0x40c00000    # 6.0f

    const v5, 0x3e8f5c29    # 0.28f

    const/high16 v17, 0x42000000    # 32.0f

    const/4 v6, 0x0

    if-eqz v4, :cond_c

    move-object v4, v3

    check-cast v4, Lcom/prineside/tdi2/tiles/PlatformTile;

    iget-object v3, v4, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    if-eqz v3, :cond_b

    iget-object v15, v3, Lcom/prineside/tdi2/Building;->buildingType:Lcom/prineside/tdi2/enums/BuildingType;

    sget-object v7, Lcom/prineside/tdi2/enums/BuildingType;->TOWER:Lcom/prineside/tdi2/enums/BuildingType;

    if-ne v15, v7, :cond_b

    move-object v15, v3

    check-cast v15, Lcom/prineside/tdi2/Tower;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v7, v15, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v3, v7}, Lcom/prineside/tdi2/managers/TowerManager;->getFactory(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/Tower$Factory;

    move-result-object v7

    invoke-virtual {v2, v6, v6, v6, v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/AssetManager;->getBlankWhiteTextureRegion()Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v5

    iget-object v3, v4, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v6, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v18, 0x42800000    # 64.0f

    sub-float v6, v6, v18

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v19, v3, v18

    const/high16 v20, 0x43000000    # 128.0f

    const/high16 v21, 0x42800000    # 64.0f

    move-object v3, v2

    move-object/from16 v22, v4

    move-object v4, v5

    move v5, v6

    move/from16 v6, v19

    move-object/from16 v19, v7

    move/from16 v18, v9

    const/high16 v9, 0x42800000    # 64.0f

    move/from16 v7, v20

    move-object/from16 v23, v8

    move/from16 v8, v21

    invoke-virtual/range {v3 .. v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    sget-object v3, Lcom/prineside/tdi2/Config;->WHITE_COLOR_CACHED_FLOAT_BITS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual/range {v19 .. v19}, Lcom/prineside/tdi2/Tower$Factory;->getBaseTextures()Lcom/badlogic/gdx/utils/Array;

    move-result-object v3

    move-object/from16 v8, v22

    iget-object v4, v8, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float v5, v5, v17

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v4, v9

    invoke-static {v3, v2, v5, v4, v9}, Lcom/prineside/tdi2/utils/TextureRegionConfig;->drawBatch(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFF)V

    invoke-virtual {v15}, Lcom/prineside/tdi2/Tower;->getWeaponTextures()Lcom/badlogic/gdx/utils/Array;

    move-result-object v3

    iget-object v4, v8, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float v5, v5, v17

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v4, v9

    invoke-static {v3, v2, v5, v4, v9}, Lcom/prineside/tdi2/utils/TextureRegionConfig;->drawBatch(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFF)V

    const/4 v3, 0x0

    :goto_3
    const/4 v4, 0x6

    if-ge v3, v4, :cond_9

    invoke-virtual {v15, v3}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object/from16 v4, v19

    invoke-virtual {v4, v3}, Lcom/prineside/tdi2/Tower$Factory;->getAbilityTextures(I)Lcom/badlogic/gdx/utils/Array;

    move-result-object v5

    const/4 v6, 0x0

    :goto_4
    iget v7, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v6, v7, :cond_7

    iget-object v7, v5, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v7, [Lcom/prineside/tdi2/utils/TextureRegionConfig;

    aget-object v7, v7, v6

    iget-object v9, v8, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    move-object/from16 v20, v4

    iget v4, v9, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float v4, v4, v17

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object/from16 v21, v5

    const/high16 v5, 0x42800000    # 64.0f

    sub-float/2addr v9, v5

    invoke-virtual {v7, v2, v4, v9, v5}, Lcom/prineside/tdi2/utils/TextureRegionConfig;->drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFF)V

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v4, v20

    move-object/from16 v5, v21

    const/high16 v9, 0x42800000    # 64.0f

    goto :goto_4

    :cond_7
    move-object/from16 v20, v4

    goto :goto_5

    :cond_8
    move-object/from16 v20, v19

    :goto_5
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v19, v20

    const/high16 v9, 0x42800000    # 64.0f

    goto :goto_3

    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v15, Lcom/prineside/tdi2/Tower;->experience:F

    invoke-static {v4}, Lcom/prineside/tdi2/Tower;->getLevelForExperience(F)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "L"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v8, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v6, 0x42800000    # 64.0f

    sub-float/2addr v5, v6

    const/high16 v6, 0x40800000    # 4.0f

    add-float/2addr v5, v6

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v4, v4, v16

    invoke-virtual {v13, v2, v3, v5, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Lcom/prineside/tdi2/Tower;->getUpgradeLevel()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v9, v23

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v3, v8, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v6, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v7, v3, v16

    const/high16 v8, 0x42700000    # 60.0f

    const/16 v9, 0x10

    const/16 v16, 0x0

    move-object v3, v13

    move-object v4, v2

    move/from16 v24, v18

    move-object/from16 v18, v14

    move v14, v10

    move/from16 v10, v16

    invoke-virtual/range {v3 .. v10}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FFFIZ)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    invoke-virtual {v15}, Lcom/prineside/tdi2/Tower;->canAim()Z

    move-result v3

    if-eqz v3, :cond_a

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v4, v15, Lcom/prineside/tdi2/Tower;->aimStrategy:Lcom/prineside/tdi2/Tower$AimStrategy;

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/TowerManager;->getAimStrategyColor(Lcom/prineside/tdi2/Tower$AimStrategy;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/AssetManager;->getBlankWhiteTextureRegion()Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v4

    move/from16 v10, v24

    mul-int/lit16 v9, v10, 0x80

    add-int/lit16 v9, v9, 0x80

    int-to-float v3, v9

    const/high16 v5, 0x40e00000    # 7.0f

    sub-float/2addr v3, v5

    const/high16 v6, 0x41c00000    # 24.0f

    sub-float v9, v3, v6

    mul-int/lit16 v3, v14, 0x80

    int-to-float v3, v3

    add-float v16, v3, v5

    const/high16 v7, 0x41c00000    # 24.0f

    const/high16 v8, 0x41c00000    # 24.0f

    move-object v3, v2

    move v5, v9

    move/from16 v6, v16

    invoke-virtual/range {v3 .. v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    sget-object v3, Lcom/prineside/tdi2/Config;->WHITE_COLOR_CACHED_FLOAT_BITS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v4, v15, Lcom/prineside/tdi2/Tower;->aimStrategy:Lcom/prineside/tdi2/Tower$AimStrategy;

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/TowerManager;->getAimStrategyIcon(Lcom/prineside/tdi2/Tower$AimStrategy;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v4

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    goto/16 :goto_6

    :cond_a
    move/from16 v10, v24

    goto/16 :goto_6

    :cond_b
    move-object v8, v4

    move-object/from16 v18, v14

    move v14, v10

    move v10, v9

    if-eqz v3, :cond_d

    iget-object v4, v3, Lcom/prineside/tdi2/Building;->buildingType:Lcom/prineside/tdi2/enums/BuildingType;

    sget-object v7, Lcom/prineside/tdi2/enums/BuildingType;->MODIFIER:Lcom/prineside/tdi2/enums/BuildingType;

    if-ne v4, v7, :cond_d

    move-object v9, v3

    check-cast v9, Lcom/prineside/tdi2/Modifier;

    invoke-virtual {v2, v6, v6, v6, v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/AssetManager;->getBlankWhiteTextureRegion()Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v4

    iget-object v3, v8, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v6, 0x42800000    # 64.0f

    sub-float/2addr v5, v6

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v7, v3, v6

    const/high16 v15, 0x43000000    # 128.0f

    const/high16 v16, 0x42800000    # 64.0f

    move-object v3, v2

    move v6, v7

    move v7, v15

    move-object v15, v8

    move/from16 v8, v16

    invoke-virtual/range {v3 .. v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    sget-object v3, Lcom/prineside/tdi2/Config;->WHITE_COLOR_CACHED_FLOAT_BITS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->modifierManager:Lcom/prineside/tdi2/managers/ModifierManager;

    iget-object v4, v9, Lcom/prineside/tdi2/Modifier;->type:Lcom/prineside/tdi2/enums/ModifierType;

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/ModifierManager;->getFactory(Lcom/prineside/tdi2/enums/ModifierType;)Lcom/prineside/tdi2/Modifier$Factory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/prineside/tdi2/Modifier$Factory;->getBaseTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v4

    iget-object v3, v15, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float v5, v5, v17

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v6, 0x42800000    # 64.0f

    sub-float v6, v3, v6

    const/high16 v7, 0x42800000    # 64.0f

    const/high16 v8, 0x42800000    # 64.0f

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    goto/16 :goto_6

    :cond_c
    move-object/from16 v18, v14

    move v14, v10

    move v10, v9

    move-object v9, v8

    instance-of v4, v3, Lcom/prineside/tdi2/tiles/SourceTile;

    if-eqz v4, :cond_d

    move-object v15, v3

    check-cast v15, Lcom/prineside/tdi2/tiles/SourceTile;

    iget-object v3, v15, Lcom/prineside/tdi2/tiles/SourceTile;->miner:Lcom/prineside/tdi2/Miner;

    if-eqz v3, :cond_d

    invoke-virtual {v2, v6, v6, v6, v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/AssetManager;->getBlankWhiteTextureRegion()Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v4

    iget-object v3, v15, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v6, 0x42800000    # 64.0f

    sub-float/2addr v5, v6

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v7, v3, v6

    const/high16 v8, 0x43000000    # 128.0f

    const/high16 v20, 0x42800000    # 64.0f

    move-object v3, v2

    move v6, v7

    move v7, v8

    move/from16 v8, v20

    invoke-virtual/range {v3 .. v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    sget-object v3, Lcom/prineside/tdi2/Config;->WHITE_COLOR_CACHED_FLOAT_BITS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->minerManager:Lcom/prineside/tdi2/managers/MinerManager;

    iget-object v4, v15, Lcom/prineside/tdi2/tiles/SourceTile;->miner:Lcom/prineside/tdi2/Miner;

    iget-object v4, v4, Lcom/prineside/tdi2/Miner;->type:Lcom/prineside/tdi2/enums/MinerType;

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/MinerManager;->getFactory(Lcom/prineside/tdi2/enums/MinerType;)Lcom/prineside/tdi2/Miner$Factory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/prineside/tdi2/Miner$Factory;->getTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v4

    iget-object v3, v15, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float v5, v5, v17

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v6, 0x42800000    # 64.0f

    sub-float v6, v3, v6

    const/high16 v7, 0x42800000    # 64.0f

    const/high16 v8, 0x42800000    # 64.0f

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v15, Lcom/prineside/tdi2/tiles/SourceTile;->miner:Lcom/prineside/tdi2/Miner;

    invoke-virtual {v4}, Lcom/prineside/tdi2/Miner;->getUpgradeLevel()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v3, v15, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v6, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v7, v3, v16

    const/high16 v8, 0x42700000    # 60.0f

    const/16 v9, 0x10

    const/4 v15, 0x0

    move-object v3, v13

    move-object v4, v2

    move/from16 v16, v10

    move v10, v15

    invoke-virtual/range {v3 .. v10}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FFFIZ)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    goto :goto_7

    :cond_d
    :goto_6
    move/from16 v16, v10

    :goto_7
    add-int/lit8 v9, v16, 0x1

    move v10, v14

    move-object/from16 v14, v18

    goto/16 :goto_2

    :cond_e
    move-object/from16 v18, v14

    move v14, v10

    add-int/lit8 v10, v14, 0x1

    move-object/from16 v14, v18

    goto/16 :goto_1

    :cond_f
    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v4

    sub-long/2addr v4, v11

    const-string v6, "TowersRendering"

    invoke-virtual {v3, v6, v4, v5}, Lcom/prineside/tdi2/managers/DebugManager;->registerFrameJob(Ljava/lang/String;J)V

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v3

    iget-object v5, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v5, v5, Lcom/prineside/tdi2/GameSystemProvider;->_pathRendering:Lcom/prineside/tdi2/systems/PathRenderingSystem;

    invoke-virtual {v5, v2, v1}, Lcom/prineside/tdi2/systems/PathRenderingSystem;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v6

    sub-long/2addr v6, v3

    const-string v3, "PathRendering-draw"

    invoke-virtual {v5, v3, v6, v7}, Lcom/prineside/tdi2/managers/DebugManager;->registerFrameJob(Ljava/lang/String;J)V

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    const/16 v3, 0x302

    const/16 v4, 0x303

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setBlendFunction(II)V

    sget-object v5, Lcom/prineside/tdi2/Config;->WHITE_COLOR_CACHED_FLOAT_BITS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v6

    iget-object v8, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v8, v8, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    invoke-virtual {v8, v2, v1, v1}, Lcom/prineside/tdi2/systems/ParticleSystem;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v9

    sub-long/2addr v9, v6

    const-string v6, "Particle-draw"

    invoke-virtual {v8, v6, v9, v10}, Lcom/prineside/tdi2/managers/DebugManager;->registerFrameJob(Ljava/lang/String;J)V

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v6

    iget-object v8, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v8, v8, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v8, v2, v1}, Lcom/prineside/tdi2/systems/MapSystem;->drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v9

    sub-long/2addr v9, v6

    const-string v6, "Map-drawBatch"

    invoke-virtual {v8, v6, v9, v10}, Lcom/prineside/tdi2/managers/DebugManager;->registerFrameJob(Ljava/lang/String;J)V

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setBlendFunction(II)V

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setBlendFunction(II)V

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v3

    iget-object v6, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v6, v6, Lcom/prineside/tdi2/GameSystemProvider;->_mapRendering:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    invoke-virtual {v6, v2, v1}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->postDrawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v7

    sub-long/2addr v7, v3

    const-string v3, "MapRendering-postDrawBatch"

    invoke-virtual {v6, v3, v7, v8}, Lcom/prineside/tdi2/managers/DebugManager;->registerFrameJob(Ljava/lang/String;J)V

    iget-boolean v3, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->m:Z

    if-eqz v3, :cond_11

    iget-boolean v3, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->selectedTile:Z

    if-eqz v3, :cond_10

    iget v3, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->n:I

    iget v4, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->selectedTileX:I

    if-ne v3, v4, :cond_10

    iget v3, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->o:I

    iget v4, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->selectedTileY:I

    if-eq v3, v4, :cond_11

    :cond_10
    iget-object v3, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget v4, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->n:I

    iget v6, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->o:I

    invoke-virtual {v3, v2, v4, v6}, Lcom/prineside/tdi2/systems/MapSystem;->drawTileHover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    :cond_11
    iget-boolean v3, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->selectedTile:Z

    if-eqz v3, :cond_12

    iget-object v3, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget v4, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->selectedTileX:I

    iget v6, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->selectedTileY:I

    invoke-virtual {v3, v2, v4, v6}, Lcom/prineside/tdi2/systems/MapSystem;->drawTileSelection(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    :cond_12
    iget-boolean v3, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->p:Z

    if-eqz v3, :cond_14

    iget-boolean v3, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->selectedBarrier:Z

    if-eqz v3, :cond_13

    iget v3, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->q:I

    iget v4, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->selectedGateX:I

    if-ne v3, v4, :cond_13

    iget v3, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->r:I

    iget v4, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->selectedGateY:I

    if-ne v3, v4, :cond_13

    iget-object v3, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->s:Lcom/prineside/tdi2/Gate$Side;

    iget-object v4, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->t:Lcom/prineside/tdi2/Gate$Side;

    if-eq v3, v4, :cond_14

    :cond_13
    iget-object v3, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget v4, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->q:I

    iget v6, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->r:I

    iget-object v7, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->s:Lcom/prineside/tdi2/Gate$Side;

    invoke-virtual {v3, v2, v4, v6, v7}, Lcom/prineside/tdi2/systems/MapSystem;->drawGateHover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IILcom/prineside/tdi2/Gate$Side;)V

    :cond_14
    iget-boolean v3, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->selectedBarrier:Z

    if-eqz v3, :cond_15

    iget-object v3, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget v4, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->selectedGateX:I

    iget v6, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->selectedGateY:I

    iget-object v7, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->t:Lcom/prineside/tdi2/Gate$Side;

    invoke-virtual {v3, v2, v4, v6, v7}, Lcom/prineside/tdi2/systems/MapSystem;->drawGateSelection(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IILcom/prineside/tdi2/Gate$Side;)V

    :cond_15
    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v2

    iget-object v4, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->k:Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;

    invoke-virtual {v4}, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_16

    iget-object v4, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->k:Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;

    invoke-virtual {v4, v1}, Lcom/prineside/tdi2/ui/components/MapEditorInventoryMenu;->draw(F)V

    :cond_16
    iget-object v4, v0, Lcom/prineside/tdi2/screens/MapEditorScreen;->mainUi:Lcom/prineside/tdi2/ui/components/MapEditorUi;

    invoke-virtual {v4, v1}, Lcom/prineside/tdi2/ui/components/MapEditorUi;->draw(F)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-string v2, "Graphics-draw"

    invoke-virtual {v1, v2, v4, v5}, Lcom/prineside/tdi2/managers/DebugManager;->registerFrameJob(Ljava/lang/String;J)V

    return-void
.end method

.method public resize(II)V
    .locals 1

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->cameraController:Lcom/prineside/tdi2/CameraController;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/prineside/tdi2/CameraController;->setScreenSize(II)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Screen;->resize(II)V

    return-void
.end method

.method public show()V
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->i:Lcom/badlogic/gdx/InputMultiplexer;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->setInputProcessor(Lcom/badlogic/gdx/InputProcessor;)V

    return-void
.end method

.method public updateEnemyPathTraces()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Map;->rebuildPathfindingIfNeeded()V

    return-void
.end method

.method public updateSelectedItemMenu()V
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->u:Lcom/prineside/tdi2/ItemStack;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->selectedTile:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    iget v2, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->selectedTileX:I

    iget v3, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->selectedTileY:I

    invoke-virtual {v0, v2, v3}, Lcom/prineside/tdi2/Map;->getTile(II)Lcom/prineside/tdi2/Tile;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v1, Lcom/prineside/tdi2/Item$D;->F_TILE:Lcom/prineside/tdi2/items/TileItem$TileItemFactory;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/items/TileItem$TileItemFactory;->create(Lcom/prineside/tdi2/Tile;)Lcom/prineside/tdi2/items/TileItem;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->selectedBarrier:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    iget v2, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->selectedGateX:I

    iget v3, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->selectedGateY:I

    iget-object v4, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->t:Lcom/prineside/tdi2/Gate$Side;

    invoke-virtual {v0, v2, v3, v4}, Lcom/prineside/tdi2/Map;->getGate(IILcom/prineside/tdi2/Gate$Side;)Lcom/prineside/tdi2/Gate;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v1, Lcom/prineside/tdi2/Item$D;->F_GATE:Lcom/prineside/tdi2/items/GateItem$GateItemFactory;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/items/GateItem$GateItemFactory;->create(Lcom/prineside/tdi2/Gate;)Lcom/prineside/tdi2/items/GateItem;

    move-result-object v1

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->l:Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->l:Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->setItem(Lcom/prineside/tdi2/Item;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/prineside/tdi2/screens/MapEditorScreen;->l:Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->setVisible(Z)V

    :goto_1
    return-void
.end method
